return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'kanagawa-wave' -- or kanagawa-dragon / kanagawa-lotus
    end,
  }
  