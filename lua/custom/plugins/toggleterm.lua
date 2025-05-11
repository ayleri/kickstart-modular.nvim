return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]],       -- is this better in keymaps or no ??
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      direction = 'float',       -- or "horizontal"/"vertical"
      float_opts = {
        border = 'curved',
      },
    }
  end,
}

