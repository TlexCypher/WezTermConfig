local module = {}

function module.apply_to_config(config)
	config.window_background_image = "/Users/araki/Downloads/yzerr.jpg"
	config.window_background_image_hsb = {
		-- Darken the background image by reducing it to 1/3rd
		brightness = 0.2,

		-- You can adjust the hue by scaling its value.
		-- a multiplier of 1.0 leaves the value unchanged.
		hue = 1.0,

		-- You can adjust the saturation also.
		saturation = 1.0,
	}
end

return module
