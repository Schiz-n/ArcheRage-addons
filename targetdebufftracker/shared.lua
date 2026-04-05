if TargetDebuffTrackerShared == nil then
	TargetDebuffTrackerShared = {}
end

local shared = TargetDebuffTrackerShared

shared.effectFiles = shared.effectFiles
	or {
		target = {
			buff = "buff.lua",
			debuff = "debuff.lua",
			hidden = "hidden_buff.lua",
		},
		self = {
			buff = "self_buff.lua",
			debuff = "self_debuff.lua",
			hidden = "self_hidden_buff.lua",
		},
	}

shared.iconSettingFiles = shared.iconSettingFiles
	or {
		target = "buffIconInfo.txt",
		self = "selfabuffIconInfo.txt",
	}

shared.defaultHiddenBuffs = shared.defaultHiddenBuffs
	or {
		["22969"] = { name = "Defiance", iconPath = "" },
		["23214"] = { name = "Defiance", iconPath = "" },
		["27128"] = { name = "Defiance", iconPath = "" },
		["24405"] = { name = "Defiance", iconPath = "" },
		["32871"] = { name = "Defiance", iconPath = "" },
	}

local function copyTable(source)
	local result = {}
	for key, value in pairs(source) do
		result[key] = value
	end
	return result
end

local function trimTrailingComma(value)
	if value == nil then
		return nil
	end

	return value:gsub(",%s*$", "")
end

local function decodeLuaString(value)
	local trimmed = trimTrailingComma(value)
	if trimmed == nil then
		return ""
	end

	local loader = loadstring or load
	if loader == nil then
		return trimmed:gsub('^"', ""):gsub('"$', "")
	end

	local chunk = loader("return " .. trimmed)
	if chunk == nil then
		return trimmed:gsub('^"', ""):gsub('"$', "")
	end

	local success, decoded = pcall(chunk)
	if success then
		return tostring(decoded or "")
	end

	return trimmed:gsub('^"', ""):gsub('"$', "")
end

local function normalizeTrackedEntry(value)
	if type(value) == "table" then
		return {
			name = tostring(value.name or value[1] or ""),
			iconPath = tostring(value.iconPath or value.icon or value.path or ""),
		}
	end

	return {
		name = tostring(value or ""),
		iconPath = "",
	}
end

local function decodeTrackedValue(value)
	local trimmed = trimTrailingComma(value)
	if trimmed == nil then
		return normalizeTrackedEntry("")
	end

	local loader = loadstring or load
	if loader ~= nil then
		local chunk = loader("return " .. trimmed)
		if chunk ~= nil then
			local success, decoded = pcall(chunk)
			if success then
				return normalizeTrackedEntry(decoded)
			end
		end
	end

	return normalizeTrackedEntry(decodeLuaString(trimmed))
end

local function ensureUiState()
	if shared.uiState ~= nil then
		return shared.uiState
	end

	local saved = ADDON and ADDON:LoadData("targetdebufftracker_ui") or nil
	shared.uiState = {
		filterTrackedOnly = true,
		activeScope = "target",
		activeEffect = "buff",
		target = {
			buff = true,
			debuff = true,
			hidden = true,
		},
		self = {
			buff = true,
			debuff = true,
			hidden = true,
		},
	}

	if type(saved) == "table" then
		shared.uiState.filterTrackedOnly = saved.filterTrackedOnly ~= false
		if saved.activeScope == "target" or saved.activeScope == "self" then
			shared.uiState.activeScope = saved.activeScope
		end
		if saved.activeEffect == "buff" or saved.activeEffect == "debuff" or saved.activeEffect == "hidden" then
			shared.uiState.activeEffect = saved.activeEffect
		end

		for _, scope in ipairs({ "target", "self" }) do
			if type(saved[scope]) == "table" then
				for _, effectType in ipairs({ "buff", "debuff", "hidden" }) do
					if saved[scope][effectType] ~= nil then
						shared.uiState[scope][effectType] = saved[scope][effectType] == true
					end
				end
			end
		end
	end

	return shared.uiState
end

function shared.SaveUiState()
	local uiState = ensureUiState()
	if ADDON ~= nil then
		ADDON:ClearData("targetdebufftracker_ui")
		ADDON:SaveData("targetdebufftracker_ui", uiState)
	end
end

function shared.GetUiState()
	return ensureUiState()
end

function shared.GetIconSettings(scope)
	if shared.iconSettings == nil then
		shared.iconSettings = {}
	end

	if shared.iconSettings[scope] ~= nil then
		return shared.iconSettings[scope]
	end

	local defaults = {
		iconSize = 25,
		buffsX = 0,
		buffsY = 0,
		debuffsX = 0,
		debuffsY = 0,
	}

	local filename = shared.iconSettingFiles[scope]
	local file = filename and io.open(filename, "r") or nil
	if file == nil then
		shared.iconSettings[scope] = defaults
		return defaults
	end

	local line = file:read("*line")
	file:close()

	local iconSize
	local buffsX
	local buffsY
	local debuffsX
	local debuffsY
	if line ~= nil then
		iconSize, buffsX, buffsY, debuffsX, debuffsY =
			line:match("(%-?%d+),(%-?%d+),(%-?%d+),(%-?%d+),(%-?%d+)")
	end
	if iconSize == nil then
		shared.iconSettings[scope] = defaults
		return defaults
	end

	shared.iconSettings[scope] = {
		iconSize = tonumber(iconSize) or defaults.iconSize,
		buffsX = tonumber(buffsX) or defaults.buffsX,
		buffsY = tonumber(buffsY) or defaults.buffsY,
		debuffsX = tonumber(debuffsX) or defaults.debuffsX,
		debuffsY = tonumber(debuffsY) or defaults.debuffsY,
	}

	return shared.iconSettings[scope]
end

local function loadTrackedTable(scope, effectType)
	if shared.tracked == nil then
		shared.tracked = {}
	end

	shared.tracked[scope] = shared.tracked[scope] or {}
	if shared.tracked[scope][effectType] ~= nil then
		return shared.tracked[scope][effectType]
	end

	local filename = shared.effectFiles[scope][effectType]
	local tracked = {}
	local file = io.open(filename, "r")
	if file ~= nil then
		for line in file:lines() do
			local id, encodedValue = line:match('%["(%d+)"%]%s*=%s*(.+)')
			if id ~= nil and encodedValue ~= nil then
				tracked[id] = decodeTrackedValue(encodedValue)
			end
		end
		file:close()
	elseif effectType == "hidden" then
		tracked = copyTable(shared.defaultHiddenBuffs)
	end

	shared.tracked[scope][effectType] = tracked
	return tracked
end

function shared.GetTracked(scope, effectType)
	return loadTrackedTable(scope, effectType)
end

function shared.SaveTracked(scope, effectType)
	local tracked = loadTrackedTable(scope, effectType)
	local filename = shared.effectFiles[scope][effectType]
	local file = io.open(filename, "w")
	if file == nil then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "Failed to save " .. filename)
		return false
	end

	file:write("target_" .. effectType .. " = {\n")
	for id, entry in pairs(tracked) do
		local normalized = normalizeTrackedEntry(entry)
		file:write(
			string.format(
				'    ["%s"] = { name = %q, iconPath = %q },\n',
				tostring(id),
				normalized.name,
				normalized.iconPath
			)
		)
	end
	file:write("}\n")
	file:close()
	return true
end

function shared.AddTracked(scope, effectType, effectId, name, iconPath)
	local tracked = loadTrackedTable(scope, effectType)
	tracked[tostring(effectId)] = {
		name = tostring(name or ""),
		iconPath = tostring(iconPath or ""),
	}
	return shared.SaveTracked(scope, effectType)
end

function shared.RemoveTracked(scope, effectType, effectId)
	local tracked = loadTrackedTable(scope, effectType)
	tracked[tostring(effectId)] = nil
	return shared.SaveTracked(scope, effectType)
end

function shared.IsTracked(scope, effectType, effectId)
	local tracked = loadTrackedTable(scope, effectType)
	return tracked[tostring(effectId)] ~= nil
end

function shared.ShouldDisplay(scope, effectType, effectId)
	local uiState = ensureUiState()
	if uiState[scope] == nil or uiState[scope][effectType] ~= true then
		return false
	end

	if uiState.filterTrackedOnly ~= true then
		return true
	end

	return shared.IsTracked(scope, effectType, effectId)
end

function shared.FormatDuration(seconds)
	if seconds == nil or seconds == "" then
		return ""
	end

	local numeric = tonumber(seconds)
	if numeric == nil then
		return tostring(seconds)
	end

	if numeric < 0 then
		return ""
	end

	if numeric < 60 then
		return tostring(math.floor(numeric))
	end

	local minutes = math.floor(numeric / 60)
	local remainingSeconds = math.floor(numeric % 60)
	return string.format("%d:%02d", minutes, remainingSeconds)
end

function shared.GetSortedTrackedEntries(scope, effectType)
	local tracked = loadTrackedTable(scope, effectType)
	local entries = {}
	for id, entry in pairs(tracked) do
		local normalized = normalizeTrackedEntry(entry)
		table.insert(entries, {
			id = tostring(id),
			name = normalized.name,
			iconPath = normalized.iconPath,
		})
	end

	table.sort(entries, function(left, right)
		local leftName = string.lower(left.name ~= "" and left.name or left.id)
		local rightName = string.lower(right.name ~= "" and right.name or right.id)
		if leftName == rightName then
			return tonumber(left.id) < tonumber(right.id)
		end

		return leftName < rightName
	end)

	return entries
end
