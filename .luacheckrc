std = "lua51"
codes = true

ignore = {
  "111", -- setting non-standard global variable
  "112", -- mutating non-standard global variable
  "113", -- accessing undefined variable
  "212", -- unused argument
  "213"  -- unused loop variable
}

exclude_files = {
  "**/.git/**"
}