local wezKeyBinding = require("wezKeyBind")
local wezFont = require("wezFont")
local wezFontSize = require("wezFontSize")
local wezColorScheme = require("wezColorScheme")
local wezOpacity = require("wezOpacity")
local wezInit = require("wezInit")
require("wezCopyMode")
require("wezFullScreen")

local config = {}
wezInit.apply_to_config(config)
wezKeyBinding.apply_to_config(config)
wezFont.apply_to_config(config)
wezColorScheme.apply_to_config(config)
wezOpacity.apply_to_config(config)
wezFontSize.apply_to_config(config)

return config
