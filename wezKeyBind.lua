local wezterm = require("wezterm")
require("wezToggleOpacity")
require("wezIncrementOpacity")
require("wezDecrementOpacity")
require("wezIncrementFontSize")
require("wezDecrementFontSize")
local module = {}

function module.apply_to_config(config)
	config.disable_default_key_bindings = true
	config.leader = { key = "w", mods = "CMD", timeout_milliseconds = 5000 }
	config.keys = {
		{
			key = "\\",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "-",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = "LEADER",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
		{
			key = "h",
			mods = "LEADER",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "j",
			mods = "LEADER",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			mods = "LEADER",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "l",
			mods = "LEADER",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "f",
			mods = "LEADER",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "n",
			mods = "LEADER",
			action = wezterm.action.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "i",
			mods = "LEADER",
			action = wezterm.action.IncreaseFontSize,
		},
		{
			key = "I",
			mods = "LEADER|SHIFT",
			action = wezterm.action.DecreaseFontSize,
		},
		{
			key = " ",
			mods = "SHIFT|CTRL",
			action = wezterm.action.QuickSelect,
		},
		{
			key = "v",
			mods = "CMD",
			action = wezterm.action.PasteFrom("Clipboard"),
		},
		{
			key = "t",
			mods = "LEADER",
			action = wezterm.action.EmitEvent("toggle_opacity"),
		},
		{
			key = "d",
			mods = "LEADER",
			action = wezterm.action.EmitEvent("incrementOpacity"),
		},
		{
			key = "u",
			mods = "LEADER",
			action = wezterm.action.EmitEvent("decrementOpacity"),
		},
		{
			key = "U",
			mods = "LEADER|SHIFT",
			action = wezterm.action.EmitEvent("incrementFontSize"),
		},
		{
			key = "D",
			mods = "LEADER|SHIFT",
			action = wezterm.action.EmitEvent("decrementFontSize"),
		},
	}
	for i = 1, 9 do
		table.insert(config.keys, {
			key = tostring(i),
			mods = "LEADER",
			action = wezterm.action.ActivateTab(i - 1),
		})
	end
end

return module
