----------------------------------------------------------------------------------------
-- Avi
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetAviName(fileName)
SetAviNum(depth,type)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Button
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
UI_BUTTON_DISABLED
UI_BUTTON_NORMAL
UI_BUTTON_HIGHLIGHTED
UI_BUTTON_PUSHED
UI_BUTTON_MAX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetFocus()
SetNormalBackground(normalTable)
SetDisabledBackground(disabledTable)
SetHighlightBackground(highlightTable)
SetPushedBackground(pushedTable)
GetNormalBackground()
GetDisabledBackground()
GetHighlightBackground()
GetPushedBackground()
SetTextColor(r, g, b, a)
SetNormalColor(r, g, b, a)
SetPushedTextColor(r, g, b, a)
SetPushedColor(r, g, b, a)
SetHighlightTextColor(r, g, b, a)
SetHighlightColor(r, g, b, a)
SetDisabledTextColor(r, g, b, a)
SetDisabledColor(r, g, b, a)
SetInset(left, top, right, bottom)
GetNormalColor()
GetPushedColor()
GetHighlightColor()
GetDisabledColor()
CreateStateDrawable(state, drawableType, path)
SetButtonState(state)
GetButtonState()
RegisterForClicks()
DeregisterForClicks()
SetAutoResize(resize)
SetAutoClipChar(resize)
SetStyle(style)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- ChatEdit
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetChannel(chatType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- ChatMessage
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetUpButton()
GetDownButton()
GetDownToBottomButton()
GetSlider()
MouseWheelDown(value)
MouseWheelUp(value)
BackupString(name)
CleanupBackupString()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- ChatTabWindow
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetChatWindowId(id)
GetChatEdit()
GetChatMethodSelector()
GetImeToggleButton()
GetUrlButton()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Checkbutton
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetChecked()
SetChecked(state)
SetCheckedBackground(checkedTable)
SetDisabledCheckedBackground(disabledCheckedTable)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Circlediagram
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetMaxValue(maxValue)
SetDiagramColor(r, g, b, a)
SetLineThickness(thickness)
ClearPoints()
AddPointsByAngle(pointNum)
AddPoint(offX, offY)
SetPointValue(index, value)
GetPointOffset(index)
GetCenterOffset()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Colorpicker
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetPaletteImage(imageName)
GetColor(xPos, yPos)
GetPoint(colorR, colorG, colorB)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Combobox
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetEditable(editable)
SetDropdownVisibleLimit(limit)
SetAutocomplete(type, filter)
PauseAutocomplete(pause)
Insert(datas)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Cooldown
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetCoolDown(remainTime, totalTime)
SetCoolDownMask(textureName, textureKey, colorKey)
SetBagItemSlot(itemSlot)
SetBankItemSlot(itemSlot)
SetCofferItemSlot(itemSlot)
SetGuildBankItemSlot(itemSlot)
SetItem(itemType)
SetSkill(skillType)
SetItemSlot(itemSlot, slotType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Damagedisplay
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
LAT_NONE
LAT_MOVE
LAT_COUNT
LAT_AFTERIMAGE
LAT_SHAKE
LAT_LINEAR_DISPLAY
PCT_DEFAULT
PCT_SHIP_COLLISION
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetInset(left, top, right, bottom)
GetInset()
SetInitPos(x, y)
SetUnitId(sourceId, targetId)
SetPositionCalculationType(positionCalculationType)
Animation(anim)
SetAnimFrameInfo(frameInfo)
GetActualDrawn()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Drawable
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
DAT_MOVE
DAT_LINEAR_SCALE
DAT_LINEAR_ALPHA
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetColor(r, g, b, a)
SetVisible(visible)
SetVisibleForString(visible)
Show(show)
SetRotation(angle)
SetSRGB(srgb)
IsVisible()
SetTexture(filename)
SetTextureInfo(infoKey)
SetTextureColor(colorKey)
SetCoords(x, y, w, h)
SetInset(left, top, right, bottom)
GetTextureSize()
SetTextureColor(colorKey)
SetColor(r, g, b, a)
GetColor()
SetOutlineInvisiblePart(invisible, part)
SetTgaTexture(filename)
SetUccTextureInDoodad(doodadId, isBack)
SetUccTextureByUccId(complexId, isBack)
Animation(anim, loop)
SetAnimFrameInfo(frameInfo)
SetTiling(tiling)
SetSnap( used)
IsGrayTexture()
IsWhiteTexture()
AddTexture(filename)
AddTextureWithInfo(filename, coord)
ClearAllTextures()
SetText(text)
SetLText()
SetSnap(snap)
SetShadow(shadow)
SetAlign(align)
SetOutline(outline)
SetCoords(x, y, width, height)
ChangeImageFile(typeNumber)
ChangeUserImageFile(idx)
ChangeColor1(r, g, b)
ChangeColor2(r, g, b)
ChangeColor3(r, g, b)
SetCoords(x, y, width, height)
SetTexture(filename)
SetInset(left, top, right, bottom)
SetInternalDrawType(drawType)
SetEffectPriority(phase, priority, velocityTime, accelerationTime)
SetEffectScale(phase, initialX, finalX, initialY, finalY)
SetEffectScaleAxis(phase, axis)
SetEffectRotate(phase, initial, final)
SetEffectInitialColor(phase, initialR, initialG, initialB, intialA)
SetEffectFinalColor(phase, finalR, finalG, finalB, finalA)
SetEffectInterval(phase, interval)
SetEffectClip(phase, needClip)
SetRepeatCount(repeatCount)
SetInterval(initialInterval)
SetMoveEffectType(phase, moveType, horizontalRadius, verticalRadius, velocityTime, accelerationTime)
SetMoveEffectCircle(phase, initial, final)
SetMoveEffectEdge(phase, initial, final)
SetMoveEffectInterval(phase, interval)
SetMoveRepeatCount(repeatCount)
SetMoveInterval(InitialInterval)
SetMoveRotate(needRotate)
ClearEffect()
ClearMoveEffect()
SetStartEffect(start)
IsRunning()
GetEffectPhaseCount()
GetEffectPhaseProperties(phase)
SetEffectPhaseProperties(phase, properties)
GetMoveEffectPhaseCount()
GetMoveEffectPhaseProperties(phase)
SetMoveEffectPhaseProperties(phase, properties)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- DynamicList
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
InitHeight(viewHeight, mainHeight, subHeight)
InitFunc(mainLayout, mainData, subLayout, subData)
InitBgType(bgDrawType)
InitCreateWidgetPool()
SetGaps(mainGap, subListGap)
EraseData(index)
InsertData(index, mainKey, subDatas)
PushData(mainKey, subDatas)
UpdateData(mainKey, subDatas)
ClearData()
MoveIndex(index, anchorHeight, open)
MoveHeight(height)
SaveItemList()
LoadItemList()
UpdateView()
GetMainList()
GetMainIndex(mainKey)
GetScrollMaxValue()
GetCurrentHeight()
Toggle(index)
ToggleByMainKey(mainKey)
ToggleSubItem(mainKey, depth, depthKey)
SetSelectedItemInfo(key, depth)
GetSelectedItemInfo()
IsSelectedItem(key, depth)
EnableChildTouch(isEnable)
InsertSubItemInfo(mainKey, depth, depthKey, key)
EraseSubItemInfo(mainKey, depth, depthKey, key)
OpenBySubItemInfo(mainKey, depth, key)
CreateOveredImage(layerStr)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Edit
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetText()
SetMaxTextLength(length)
ClearTextOnEnter(clear)
SetPassword(password)
SetInset(left, top, right, bottom)
AddHistoryLine(text)
SetHistoryLines(count)
SetDigit(digit)
SetDigitEmpty(empty)
SetDigitMax(max)
SetEnglish(english)
SetText(text)
ClearFocus()
SetFocus()
MaxTextLength()
IsPassword()
IsDigit()
SetCursorOffset(offset)
SetCursorHeight(height)
SetCursorColor(r, g, b, a)
SetCursorColorByColorKey(colorKey)
SetReadOnly(readOnly)
SetReClickable(click)
SetPrefixText(prefixText)
SetPrefixInset(left, top, right, bottom)
UseSelectAllWhenFocused(use)
SetInitVal(val)
SetPossibleFirstZero(possibleFirstZero)
SetGuideText(text)
SetGuideTextInset(insetData)
CheckNamePolicy(nameType)
ClearString()
IsNowComposition()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Editmultiline
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetText()
GetLineHeight()
GetTextHeight()
GetTextLength()
ClearTextOnEnter(clear)
SetReadOnly(readOnly)
SetInset(left, top, right, bottom)
SetLineSpace(space)
SetMaxTextLength(length)
MaxTextLength()
GetLineCount()
Clear()
SetCursorColor(r, g, b, a)
SetCursorColorByColorKey(colorKey)
SetCursorOffset(offset)
SetCursorHeight(height)
GetCursorPosX()
GetCursorPosY()
SetGuideText(text)
SetGuideTextInset(insetData)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Emptywidget
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetDrawBorder(draw, r, g, b, a)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Folder
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetTitleText(text)
GetTitleText()
SetTitleHeight(height)
OpenFolder()
CloseFolder()
FixedCloseFolder()
ToggleState()
GetState()
GetExtendLength()
SetChildWidget(childTable)
SetAnimateStep(height)
SetExtendLength(height)
UseAnimation(useAnimation)
SetInset(left, top, right, bottom)
SetOpenStateButton(openTable)
SetCloseStateButton(closeTable)
SetTitleButtonWidget(titleTable)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Gametooltip
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
AddLine(text, fontPath, fontSize, align, textAlign, indentation)
AddAnotherSideLine(index, text, fontPath, fontSize, textAlign, indentation)
AttachUpperSpaceLine,)index, height)
AttachLowerSpaceLine,)index, height)
SetInset(left, top, right, bottom)
SetAutoWordwrap(wrap)
ClearLines()
GetLastLine()
GetLineCount()
SetLineSpace(space)
GetLineSpace()
SetTooltipData()
GetHeightToLastLine()
UFT_NAME()
UFT_CURHP()
UFT_MAXHP()
UFT_PERHP()
UFT_CURMP()
UFT_MAXMP()
UFT_PERMP()
UFT_CUPLABOR()
UFT_MAXLABOR()
UFT_PVPHONOR()
UFT_PVPKILL()
UFT_GEARSCORE()
UFT_PERIOD_LEADERSHIP()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Grid
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetItem(table, row, col, makeIfNotExist, value, withoutExtent)
RemoveItem(row, col)
RemoveAllItems()
SetRowCount(count)
SetColCount(count)
SetRowHeight(height, row)
SetColWidth(width, col)
SetInsetForOutLine(left, top, right, bottom)
SetInsetForCol(left, top, right, bottom)
SetInsetForRow(left, top, right, bottom)
SetSelectedLine(select)
SetCurrentLine(current)
SetLineBackGround(line)
SetRowTexture(texture)
SetColTexture(texture)
SetSelectedTexture(texture)
SetCurrentTexture(texture)
ClearItem()
ScrollUp()
ScrollDown()
ScrollLeft()
ScrollRight()
GetSelectedRowIndex()
GetSelectedColIndex()
GetSelectedValue()
GetTop()
GetLeft()
GetMaxTop()
SetTop(top)
SetLeft(left)
SetDefaultRowHeight(height)
SetDefaultColWidth(width)
SetTopHeaderHeight(height)
SetLeftHeaderWidth(width)
SetHeaderType(type)
SetDrawLineType(type)
SetDrawStartNumber(number)
SetSelectedColor(r, g, b, a)
SetCurrentColor(r, g, b, a)
SetLineColor(r, g, b, a)
SetRowCliping(use)
GetAdjustRowHeight()
GetRowHeight(row)
GetRowCount()
SetItemInset(row, col, left, top, right, bottom)
SetSelectedTexCoord(r, g, b, a)
SetCurrentTexCoord(r, g, b, a)
SetColTexCoord(r, g, b, a)
SetRowTexCoord(r, g, b, a)
SetTexInset(left, top, right, bottom)
LineSelect(index)
ReleaseSelect()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Label
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetInset(left, top, right, bottom)
GetInset()
SetNumberOnly(only)
SetAutoResize(resize)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Line
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetPoints(points)
SetLineColor(r, b, g, a)
SetLineColorByKey(colorKey)
SetLineThickness(thickness)
ClearPoints()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- List
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
EnableSelectionToggle(enable)
Select(index)
SelectWithValue(value)
SelectWithText(text)
ClearAllSelected()
SetInset(left, top, right, bottom)
GetInset()
SetTextLimit(limitTextLength)
ShowTooltip(show)
ShowAutoTooltip(show)
SetItemTrees(treeTable)
AppendItem()
AppendItemByTable(data)
SetTop(value)
SetItem()
UpdateItem(datas)
GetSelectedIndex()
GetSelectedIndexWithDepth()
GetSelectedValue()
ClearItem()
ItemCount()
GetOpenedItemCount()
GetViewItemCount()
GetSelectedText()
ScrollUp()
ScrollDown()
GetTop()
GetMaxTop()
GetHeight()
SetHeight(height)
SetBorder(line)
SetLineColor(r, g, b, a)
SetListItemStateTextureInset(left, top, right, bottom)
SetListItemStateTexture(texFile)
SetSelectedItemCoord(x, y, cx, cy)
SetOveredItemCoord(x, y, cx, cy)
SetDefaultItemCoord(x, y, cx, cy)
SetDefaultItemColor(r, g, b, a)
SetOveredItemColor(r, g, b, a)
SetSelectedItemColor(r, g, b, a)
SetItemDefaultTextureInfo(infoKey)
SetItemOveredTextureInfo(infoKey)
SetItemSelectedTextureInfo(infoKey)
SetDisableItemTextColor(r, g, b, a)
SetSelectedItemTextColor(r, g, b, a)
SetOveredItemTextColor(r, g, b, a)
SetDefaultItemTextColor(r, g, b, a)
SetSubTextOffset(x, y, child)
CreateOpenedImageDrawable(nameTex)
CreateClosedImageDrawable(nameTex)
CreateSeparatorImageDrawable(nameTex)
InitializeSelect(index)
EnableSelectParent(enable)
EnableSelectNoValue(enable)
TurnoffOverParent()
UseChildStyle(use)
IsItemOpened(index)
GetViewItemsInfo()
SetTreeTypeIndent(use, indentLeft, indentRight)
SetFold(fold)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Listctrl
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
LCCIT_STRING
LCCIT_BUTTON
LCCIT_WINDOW
LCCIT_TEXTBOX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
InsertColumn(width, itemType)
SetColumnWidth(idx, width)
SetHeaderColumnHeight(height)
InsertRows(count, withEventWindow)
DeleteRows()
CreateOveredImage()
CreateSelectedImage()
SetOveredImageOffset(x1, y1, x2, y2)
SetSelectedImageOffset(x1, y1, x2, y2)
InsertData(key, colIdx, subItemData)
DeleteData(key)
DeleteDataByIndex(index)
DeleteAllDatas()
Select(itemIdx)
ClearSelection()
GetSelectedIdx()
SetUseDoubleClick(use)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Map
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MAX_SKILL_MAP_EFFECT_COUNT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetPlayerDrawable(player)
GetTooltipController()
SetPingWidget(widget, drawable, pingType)
SetTooltipColor(objColor, nickColor)
UpdateZoneInfo()
UpdateNpcInfo()
UpdateMonitorNpcInfo()
UpdateCurZoneGroupNpcInfo()
ClearNpcInfo()
UpdateDoodadInfo(bRoadMap)
ClearDoodadInfo()
UpdateGivenQuestStaticInfo()
ClearGivenQuestStaticInfo()
UpdateHousingInfo()
ClearHousingInfo()
UpdateShipTelescopeInfo()
RemoveShipTelescopeInfo(index)
ClearShipTelescopeInfo()
UpdateTelescopeArea()
UpdateTransferTelescopeInfo()
RemoveTransferTelescopeInfo(index)
ClearTransferTelescopeInfo()
UpdateTransferTelescopeArea()
UpdateBossTelescopeInfo()
RemoveBossTelescopeInfo(index)
ClearBossTelescopeInfo()
UpdateBossTelescopeArea()
UpdateCarryingBackpackSlaveInfo()
RemoveCarryingBackpackSlaveInfo(index)
ClearCarryingBackpackSlaveInfo()
UpdateFishSchoolInfo()
RemoveFishSchoolInfo(index)
ClearFishSchoolInfo()
UpdateFishSchoolArea()
UpdateCorpseInfo()
ClearCorpseInfo()
UpdateMySlaveInfo()
ClearMySlaveInfo()
UpdatePingInfo()
AddGivenQuestInfo(type, id)
RemoveGivenQuestInfo(type, id)
UpdateCompletedQuestInfo()
ClearCompletedQuestInfo()
AddNotifyQuestInfo(qType)
RemoveNotifyQuestInfo(qType)
ClearNotifyQuestInfo()
StartNotifyQuestEffect(index, qType, isStart)
UpdateDominionInfo()
UpdateAllDrawableAnchor()
ReloadAllInfo()
ClearAllInfo()
GetPlayerSextants()
SetSkillEffectWidget(widget, drawable, index)
ShowSkillMapEffect(x, y, z, radius, index)
UpdateFactionRezDistrictInfo()
MapWidgetShown()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Message
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetMaxLines(count)
SetLineSpace(space)
SetTimeVisible(seconds)
SetFadeDuration(seconds)
AddMessage(message)
AddMessageEx(message, visibleTime)
AddMessageRefresh(message)
AddMessageExRefresh(message, visibleTime)
RemoveLastMessage()
Clear()
SetInset(left, top, right, bottom)
ScrollUp()
ScrollDown()
ScrollToTop()
ScrollToBottom()
ScrollUp()
ScrollDown()
PageUp()
PageDown()
GetCurrentLine()
GetCurrentScroll()
SetScrollPos(value)
ResetVisibleTime()
GetLinkInfoOnCursor()
EnableItemLink(enable)
ChangeDefaultStyle()
ChangeTextStyle()
GetMessageLines()
GetPagePerMaxLines()
GetMaxLines()
GetLineSpace()
GetMessageByTimeStamp(messageTimeStamp)
CopyTextToClipboard()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Modelview
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
Init(unit, createModel)
InitByModelRef(modelRef, race, gender, butlerMode)
InitBeautyShop()
ResetBeautyShop()
ApplyModel()
ApplyModelByDyeingItem(itemType)
ClearModel()
SetBackColor(r, g, b)
SetTextureSize(width, height)
SetModelViewExtent(width, height)
SetModelViewCoords(x, y, w, h)
SetModelViewBackground(path)
SetBeautyShopMode(beautyShop)
SetIngameShopCamMode(ingameShop)
SetDisableColorGrading(disable)
SetFov(angle)
SetCameraPos(x, y, z)
AdjustCameraPosToModel(offsetY, offsetZ)
AdjustCameraPos(offsetX, offsetY, offsetZ)
ZoomInOut(amount)
ZoomInOutBeautyShop(amount)
ResetZoom()
ShowItem(itemType)
EquipItem(itemType)
UnequipItemSlot(itemSlot)
EquipCostume(itemType, itemGrade, r, g, b)
ResetEquips()
UpdateDyeColor(r, g, b)
PlayAnimation(name, loop)
StopAnimation()
SetRotation(angle)
AddRotation(angle)
GetRotation()
SetRotationX(angle)
AddRotationX(angle)
GetRotationX()
AddModelPosX(offset)
AddModelPosZ(offset)
ResetModelPos()
GetRace()
GetGender()
InitCustomizerControl()
SetCustomizingHair(index)
SetCustomizingHairColor(infos)
SetCustomizingHorn(index)
SetCustomizingHornColor(index)
SetCustomizingTail(index)
SetCustomizingSkinColor(index)
SetCustomizingBodyNormal(index, weight)
SetCustomizingScar(index, x, y, scale, rotate, weight)
SetCustomizingTattoo(index, weight)
SetCustomizingMakeUp(index, weight)
SetCustomizingEyebrow(index)
SetCustomizingEyebrowColor(r, g, b)
SetCustomizingDeco(index, weight)
SetCustomizingDecoColor(r, g, b)
SetCustomizingFaceDiffuse(index)
SetCustomizingFaceNormal(index, weight)
SetCustomizingPupil(index, range)
SetCustomizingPupilColor(r, g, b, range)
SetCustomizingLipColor(r, g, b)
SetCustomizingHairDefaultColor(infos)
SetCustomizingHairTwoToneColor(infos)
SetCustomizingPreviewCloth(index)
GetCustomHair()
GetCustomHairColor()
GetCustomHorn()
GetCustomHornColor()
GetCustomTail()
GetCustomSkinColor()
GetCustomBodyNormal()
GetCustomScar()
GetCustomTattoo()
GetCustomMakeUp()
GetCustomEyebrow()
GetCustomEyebrowColor()
GetCustomDeco()
GetCustomFaceDiffuse()
GetCustomFaceNormal()
GetCustomPupil(range)
GetCustomPupilColor(range)
GetCustomLipColor()
GetCustomizingDecoColor()
GetScarStatus()
GetTwoToneHairStatus()
ModifyFaceParamValue(index, value)
GetFaceTargetCurValue(index)
SetSmile(smile)
PayBeautyShop()
ToggleCosplayEquipped(equipped)
RemoveEquipSlot(index)
SetEquipSlotFromCharacter(index)
ApplyPresetParam(part, index)
ApplyCustomizerParamToUnit()
GetSelectedPresetIndex(part)
IsFrozen()
SetFreeze(isStop)
HasDiffWithClientUnit()
GetCustomizingOddEyeUsable()
GetCustomPreviewCloth()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Pageable
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetPageCount(num)
SetCurrentPageIndex(num)
AddWidgetToPage(widget, pageIndex)
ChangePage(index)
NextPage()
PrevPage()
GetTotalPage()
GetCurrentPageIndex()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Paintcolorpicker
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetRGBColor(red, green, blue)
SetHue(hue)
SetSat(sat)
SetLum(lum)
GetRGBColor()
GetHue()
GetSat()
GetLum()
GetSpectrumWidget()
GetLuminanceWidget()
SetSpectrumBg(bg)
SetLuminanceBg(bg)
SetHLSColor(hue, lum, sat)
GetHLSColor()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Radio
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
Clear()
GetSize()
GetChecked()
GetCheckedData()
GetDataValue(index)
GetIndexByValue(dataValue)
EnableIndex(index, enable)
ShowIndex(index, show)
UpdateValue(index, data)
Check(index)
ReleaseCheck()
IsInRange(index)
CreateRadioItem(dataValue)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Roadmap
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
InitMapData()
SetMapSize(radioValue)
SetRoadMapNpc(isShow)
SetPingBtn(clicked, pingType)
ResetCursor(isNull)
ShowLeaderPing(isShow)
OnLeftClick()
GetPlayerViewPos()
SetExpandRatio(ratio)
IsPingMode()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Slider
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
Up(step)
Down(step)
GetMinMaxValues()
GetOrientation()
GetThumbDrawable()
GetValue()
GetValueStep()
SetPageStep(pageStep)
SetMinMaxValues(min, max)
SetOrientation(scrollType)
SetThumbButtonWidget(buttonWidget)
GetThumbButtonWidget()
SetValue(value, triggerEvent)
SetValueStep(value)
SetInset(inset)
SetMinThumbLength(length)
SetFixedThumb(bool)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Slot
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
ISLOT_EQUIPMENT
ISLOT_BAG
ISLOT_BANK
ISLOT_COFFER
ISLOT_GUILD_BANK
ISLOT_PRELIMINARY_EQUIPMENT
ISLOT_MODE_ACTION
ISLOT_PET_RIDE_ACTION
ISLOT_PET_BATTLE_ACTION
ISLOT_CONSTANT
ISLOT_SKILL_ALERT
ISLOT_ACTION
ISLOT_INSTANT_KILL_STREAK
ISLOT_ABILITY_VIEW
ISLOT_SHORTCUT_ACTION
ISLOT_ORIGIN_SKILL_VIEW
ISLOT_HEIR_SKILL_VIEW
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
ChangeIconLayer(nameLayer)
EstablishVirtualSlot(slotType, slotIdx, virtualSlotIdx)
EstablishSlot(slotType, slotIdx)
EstablishItem(itemType, itemGrade)
EstablishSkill(skillType)
EstablishSkillSlot(slotType, slotIdx)
EstablishSkillAlert(statusBuffTag, remain, duration)
GetHotKey()
GetTooltip()
GetExtraInfo()
IsEmpty()
GetBindedType()
ResetState()
GetItemLevelRequirment()
GetSkillType()
GetPassiveBuffType()
ReleaseSlot()
DisableDefaultClick()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Statusbar
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetMinMaxValues(min, max)
SetMinMaxValuesForString(min, max)
SetOrientation(orientation)
SetBarTexture(nameTex, nameLayer)
SetBarColor(r, g, b, a)
SetBarColorByKey(colorKey)
SetBarTextureCoords(coordX, coordY, coordW, coordH)
SetBarTextureByKey(key)
SetValue(value)
SetValueForString(value)
AddAnchorChildToBar(anchorChild, childAnchorPoint)
IsChangeAfterImageColor(value)
GetLeftWidth(value)
GetMinMaxValues()
GetOrientation()
GetBarColor()
GetValue()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Tab
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
AddNewTab(tabName, selectedButtonWidget, unselectedButtonWidget, windowWidget)
AddSimpleTab(tabName)
ShowTab(idx)
HideTab(idx)
RemoveTab(idx)
RemoveAllTabs()
SetActivateTabCount(activateTabCount)
GetActivateTabCount()
SelectTab(idx)
SetVertical(vertical)
SetCorner(corner)
SetOffset(offset)
SetGap(gap)
GetSelectedTab()
IsHideTab(index)
GetTabCount()
AlignTabButtons()
AddTab(tabName, widget)
RemoveTab(idx)
RemoveAllTabs()
SelectTab(idx)
SetOffset(offset)
SetGap(gap)
SetSlideTimeInDragging(time)
SetContentOffset(topLeftXOffset, topLeftYOffset, bottomRightXOffset, bottomRightYOffset)
AllowTabSwitch(allow)
UseAddTabButton(use)
SetInjectable(injectable)
GetSelectedTab()
GetAddButton()
GetLeftLineDrawable()
GetRightLineDrawable()
SetLeftLineOffset(offset)
SetRightLineOffset(offset)
GetCaretDrawable()
GetLockNotifyDrawable()
SetMinTabWidth(width)
SetTabWidth(width)
SetCaretOffset(x, y)
UseSlidingButton(use)
SetTabAreaHeight(height)
UseAutoResizingTabButtonMode(offset)
SetTabButtonAlpha(selectedAlpha, unselectedAlpha)
SetMaxNotifyTime(time)
SetNotifyBlinkingFreq(freq)
SetTabAreaInset(left, top, right, bottom)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- TextStyle
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
FTK_GENERAL
FTK_IMAGETEXT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetSnap(snap)
SetShadow(shadow)
SetAlign(align)
SetOutline(outline)
SetEllipsis(ellipsis)
SetColor(r, g, b, a)
SetColorByKey(key)
SetFont(fontPath, fontSize)
SetFontSize(size)
GetTextWidth(text)
GetLineHeight()
ALIGN_TOP_LEFT()
ALIGN_TOP()
ALIGN_TOP_RIGHT()
ALIGN_LEFT()
ALIGN_CENTER()
ALIGN_RIGHT()
ALIGN_BOTTOM_LEFT()
ALIGN_BOTTOM()
ALIGN_BOTTOM_RIGHT()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Textbox
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetInset(left, top, right, bottom)
GetInset()
GetLineCount()
GetLongestLineWidth()
GetTextHeight()
GetTextLength()
GetLineLength(lineNum)
SetAutoWordwrap(wrap)
SetLineSpace(space)
SetText(text)
SetTextAutoWidth(initWidth, text, offset)
SetLineHeight(height)
SetLineColor(r, g, b, a)
SetStrikeThrough(visible)
SetUnderLine(visible)
SetAutoResize(resize)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Uibounds
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
AP_TOPLEFT
AP_TOPRIGHT
AP_BOTTOMLEFT
AP_BOTTOMRIGHT
AP_CENTER
AP_TOP
AP_LEFT
AP_RIGHT
AP_BOTTOM
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetWidth(width)
SetHeight(height)
SetExtent(width, height)
GetOffset()
GetExtent()
GetWidth()
GetHeight()
BindWidth(width)
AddAnchor()
RemoveAllAnchors()
GetEffectiveExtent()
GetEffectiveOffset()
CheckOutOfScreen()
CorrectOffsetByScreen()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Uiobject
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetObjectType()
GetId()
IsValidUIObject()
GetName()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Webbrowser
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
MouseUp(button)
MouseDown(button)
MouseMove()
WheelUp()
WheelDown()
SetURL(url)
GetURL()
LoadBlankPage()
RequestMessenger()
RequestMessengerOnTarget()
RequestMessengerByPcName(pcName)
RequestPlayDiary()
RequestPlayDiaryOnTarget()
RequestPlayDiaryByPcName(pcName)
RequestPlayDiaryInstant(fileName)
RequestExpeditionHome()
RequestExpeditionBBS()
RequestWiki()
RequestHelp()
RequestTGOS(arg)
RequestSensitiveOperationVerify(url)
RequestExternalPage(url)
SetExtent(width, height)
SetMsgToParent(toParent)
SetFocus()
ClearFocus()
SetUiLayer(layer)
SetLoadingDrawable(drawable)
SetDefaultDrawable(drawable)
SetZoomLevel(level)
SetEscEvent(has)
RequestTest(testUrl)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Webview
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetURL(url)
SetExtent(width, height)
SetFocus()
ClearFocus()
SetUiLayer(layer)
SetEscEvent(has)
RequestMessenger()
RequestMessengerOnTarget()
RequestMessengerByPcName(pcName)
RequestPlayDiary()
RequestPlayDiaryOnTarget()
RequestPlayDiaryByPcName(pcName)
RequestPlayDiaryInstant(fileName)
RequestExpeditionHome()
RequestExpeditionBBS()
RequestWiki()
RequestHelp()
RequestTGOS(arg)
RequestSensitiveOperationVerify(url)
LoadBlankPage()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Widget
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
RemoveDrawable(drawableTable)
RemoveAllDrawables(nameLayer)
EnableDrawables(nameLayer)
DisableDrawables(nameLayer)
EnableDrawablesWithChildren(nameLayer)
DisableDrawablesWithChildren(nameLayer)
UseDynamicDrawableState(nameLayer, use)
UseDynamicContentState(use)
SetLayerColor(r, g, b, a, nameLayer)
GetRotation()
SetRotation(rs)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Widgetbase
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
DC_ALWAYS
DC_SHIFT_KEY_DOWN
CT_NAME
CT_ABILITY
CT_EXPEDITION_NAME
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetParent()
SetCategory(category)
Enable(enable)
IsEnabled()
EnableFocus(enable)
EnableKeyboard(enable)
EnableHidingIsRemove(enable)
Clickable(clickable)
EnablePick(enable)
EnableDrag(enable)
SetDragCondition(dragCondition)
IsMouseOver()
IsVisible()
Show()
GetUILayer()
Lower()
Raise()
SetAlpha(alpha)
GetAlpha()
CreateDrawable(path, key, nameLayer)
CreateNinePartDrawable(nameTex, nameLayer)
CreateThreePartDrawable(nameTex, nameLayer)
CreateColorDrawable(r, g, b, a, nameLayer)
CreateColorDrawableByKey(colorKey, nameLayer)
CreateImageDrawable(nameTex, nameLayer)
CreateIconDrawable(fileName, nameLayer)
CreateTextDrawable(path, size, nameLayer)
CreateThreeColorDrawable(width, height, layer)
CreateEffectDrawable(nameTex, nameLayer)
CreateEffectDrawableByKey(nameTex, key, nameLayer)
SetDrawableLayerAlpha(alpha, nameLayer)
SetDrawPriority(drawPriority)
EnableScroll(enable)
ChangeChildAnchorByScrollValue(typeStr, value)
GetValue(typeStr)
SetText(text)
SetLText()
GetText()
AttachWidget(widget)
GetAttachedWidget()
DetachWidget()
IsDescendantWidget(id)
CreateChildWidget(objectTypeStr, name, index, reflectToScriptTable)
CreateChildWidgetByType(objectType, name, index, reflectToScriptTable)
RegisterEvent(eventName)
SetDeletedHandler(handler)
ReleaseDeletedHandler()
SetHandler(actionName, handler)
ReleaseHandler(actionName)
HasHandler(actionName)
SetSounds(name)
StartMoving()
StartSizing(anchorPoint)
MoveTo(x, y)
StopMovingOrSizing()
UseResizing(use)
SetMinResizingExtent(width, height)
SetMaxResizingExtent(width, height)
SetResizingBorderSize(left, top, right, bottom)
ApplyUIScale(apply)
SetScale(scale)
SetAlphaAnimation(initialAlpha, finalAlpha, velocityTime, accelerationTime)
SetScaleAnimation(initialScale, finalScale, velocityTime, accelerationTime, scaleAnchor)
SetMoveAnimation(direction, delta, time, repeat)
SetStartAnimation(alpha, scale)
TriggerMoveAnimation(on/off)
InheritAnimationData(targetWidgetTable)
IsNowAnimation()
SetDelegator(action, delegator, handler)
RequestCharacterCacheData(cacheQueryId)
CancelRequestCharacterCacheData()
SetCharacterCacheDataHandler(handler)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Window
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SetTitleText(title)
SetTitleInset(left, top, right, bottom)
SetWindowModal(enable)
SetUILayer(layerName)
SetCloseOnEscape(escape)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Worldmap
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
InitMapData(width, height, tgaPath, iconPath)
SetPingBtn(clicked, pingType)
RemovePing(pingType)
RemovePingAll()
OnLeftClick()
ResetCursor(isNull)
ShowPortal(zoneId, x, y, z)
SetPortalDrawable(drawable)
ShowCommonFarm(farmGroupType, farmType, x, y)
SetCommonFarmDrawable(drawable)
SetExpandRatio(ratio)
GetPlayerViewPos()
ShowQuest(qType, decalIndex, hasDecal)
SetTempNotifyCoord(isMain, coord)
SetTempNotifyColor(color)
GetClimateInfo(zoneId)
AddNotifyQuestInfo(qType)
SetTroubleZoneColor(state, r, g, b, a)
SetFestivalZoneColor(r, g, b, a)
UpdateZoneStateDrawable()
GetIconDrawable(level, id)
HideAllIconDrawable()
GetRouteDrawable(level, id)
UpdateRouteMap(routeDrawable)
GetCursorSextants()
UpdateEventMap()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
