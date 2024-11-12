local wezterm = require("wezterm")
wezterm.on("toggle_opacity", function(window, _)
	local overrides = window:get_config_overrides() or {}
	if overrides.window_background_opacity == 0.9 then
		overrides.window_background_opacity = 0.9
	else
		overrides.window_background_opacity = 0.9
	end
	window:set_config_overrides(overrides)
end)
