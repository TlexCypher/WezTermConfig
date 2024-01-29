local wezTerm = require("wezterm")
wezTerm.on("decrementOpacity", function(window, _)
	local overrides = window:get_config_overrides() or {}
	local currentOpcity = overrides.window_background_opacity
	if currentOpcity >= 0.1 then
		overrides.window_background_opacity = currentOpcity - 0.1
	end
	window:set_config_overrides(overrides)
end)
