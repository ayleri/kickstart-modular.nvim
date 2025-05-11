return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,   -- Ensures it loads early
  config = function()
    vim.o.termguicolors = true
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'gruvbox'
  end,
}

