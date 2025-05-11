return {
    'sainnhe/gruvbox-material',
    priority = 1000, -- Load before all other plugins
    config = function()
        vim.g.gruvbox_material_background = 'medium' -- "medium"/"soft"/"hard"
        vim.g.gruvbox_material_foreground = 'mix' -- "material"/"mix"/"original"
        vim.g.gruvbox_material_enable_bold = 1 -- vimscript uses 1/0 for boolean values
        vim.g.gruvbox_material_enable_italic = 1
        vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'

        vim.cmd 'colorscheme gruvbox-material'
    end,
}

