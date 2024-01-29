local wezTerm = require("wezterm")

wezTerm.on("incrementFontSize", function(window, _)
	local overrides = window:get_config_overrides() or {}
	local currentFontSize = overrides.font_size
	overrides.font_size = currentFontSize + 1
	window:set_config_overrides(overrides)
end)
