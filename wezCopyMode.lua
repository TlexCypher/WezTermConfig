local wezterm = require('wezterm')
local act = wezterm.action
return {
    key_tables = {
        copy_mode = {
            --move like vim motion, so fancy.
            -- normal mode.
            { key = "h", mods = "NONE",  action = act.CopyMode("MoveLeft") },
            { key = "j", modes = "NONE", action = act.CopyMode("MoveDown") },
            { key = "k", modes = "NONE", action = act.CopyMode("MoveUp") },
            { key = "l", modes = "NONE", action = act.CopyMode("MoveRight") },
            { key = "^", mods = "NONE",  action = act.CopyMode("MoveToStartOfLineContent") },
            { key = "$", mods = "NONE",  action = act.CopyMode("MoveToEndOfLineContent") },
            { key = "w", mods = "NONE",  action = act.CopyMode("MoveForwardWord") },
            { key = "b", mods = "NONE",  action = act.CopyMode("MoveBackwardWord") },
            { key = "g", mods = "NONE",  action = act.CopyMode("MoveToScrollbackTop") },
            { key = "G", mods = "NONE",  action = act.CopyMode("MoveToScrollbackBottom") },
            { key = "y", mods = "NONE",  action = act.CopyTo("Clipboard") },
            -- visual mode.
            { key = "v", mods = "NONE",  action = act.CopyMode({ SetSelectionMode = "Cell" }) },
            { key = "v", mods = "CTRL",  action = act.CopyMode({ SetSelectionMode = "Block" }) },
            { key = "V", mods = "NONE",  action = act.CopyMode({ SetSelectionMode = "Line" }) },
            -- exit copy mode
            {
                key = "Enter",
                mods = "NONE",
                action = act.Multiple({ { CopyTo = "ClipboardAndPrimarySelection" }, { CopyMode = "Close" } }),
            },
            { key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
        }
    }
}
