local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	config.quick_select_patterns = {
		-- match things that look like sha1 hashes
		-- (this is actually one of the default patterns)
		"[0-9a-f]{7,40}",
	}
end

return module
