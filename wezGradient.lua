local module = {}

function module.apply_to_config(config)
    config.window_background_gradient = {
        orientation = "Vertical",
        colors = {
            "#0f0c29",
            "#302b63",
            "#24243e",
        },
        interpolation = "Linear",
        blend = "Rgb",
    }
end

return module
