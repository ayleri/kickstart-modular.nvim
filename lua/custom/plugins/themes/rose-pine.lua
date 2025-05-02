-- lua/custom/plugins/themes/rose-pine.lua
return {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    config = function()
        require('rose-pine').setup {
            variant = 'moon', -- "main", "moon", "dawn"
            styles = {
                bold = true,
                italic = false,
                transparency = false,
            },
        }
        vim.cmd.colorscheme 'rose-pine'
    end,
}
