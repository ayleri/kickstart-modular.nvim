return {
  'janko-m/vim-test',
  config = function()
    vim.g['test#strategy'] = 'dispatch'
    vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { silent = true })
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { silent = true })
    vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { silent = true })
    vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { silent = true })
  end,
}
