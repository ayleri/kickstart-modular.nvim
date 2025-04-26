return {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Optional: configure nord-specific settings
        vim.g.nord_contrast = true
        vim.g.nord_borders = true
        vim.g.nord_disable_background = false
        vim.g.nord_italic = false
        vim.g.nord_uniform_diff_background = true
        vim.g.nord_bold = true
        vim.cmd.colorscheme 'nord'
    end,
  }