-- lua/custom/plugins/themes/tokyonight.lua
return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('tokyonight').setup {
            style = 'night', -- "storm", "night", "moon", "day"
            transparent = false,
            styles = {
                comments = { italic = true },
                keywords = { italic = false },
                functions = { bold = true },
                variables = {},
            },
        }
        vim.cmd.colorscheme 'tokyonight'
    end,
}
