local wezTerm = require("wezterm")
local mux = wezTerm.mux
wezTerm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)
