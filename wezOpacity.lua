local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	config.window_background_opacity = 0.83
end

return module
