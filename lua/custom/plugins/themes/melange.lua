return {
  'savq/melange-nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'melange'
  end,
}
