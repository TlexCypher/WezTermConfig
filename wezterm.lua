local wezFont = require("wezFont")
local wezColorScheme = require("wezColorScheme")
local wezOpacity = require("wezOpacity")
-- local wezGradient = require("wezGradient")
-- local wezQuieckSelectPatterns = require("wezQuickSelectPatterns")
local wezKeyBinding = require("wezKeyBind")
local wezImage = require("wezImage")

local config = {}
wezFont.apply_to_config(config)
wezColorScheme.apply_to_config(config)
wezOpacity.apply_to_config(config)
wezImage.apply_to_config(config)
wezKeyBinding.apply_to_config(config)
-- wezGradient.apply_to_config(config)
-- wezQuieckSelectPatterns.apply_to_config(config)
return config
