local picker = require("custom.plugins.themes.theme-picker")

-- pull spec
local spec = require("custom.plugins.themes." .. picker.current_theme)

spec.lazy = false
spec.priority = spec.priority or 1000

return spec