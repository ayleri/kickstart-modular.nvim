-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- 'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
        filesystem = {
            window = {
                position = 'left',
                width = 28,
                mappings = {
                    ['\\'] = 'close_window',
                },
            },
        },
    },
    config = function(_, opts)
        require('neo-tree').setup(opts)
        -- Gruvbox Material Medium Mix Color References
        -- https://github.com/sainnhe/gruvbox-material

        local highlights = {
            -- File/Folder Icons
            NeoTreeFileIcon = { fg = '#d4be98' },                          -- light beige (fg)
            NeoTreeDirectoryIcon = { fg = '#7daea3' },                     -- aqua
            NeoTreeDirectoryName = { fg = '#a9b665' },                     -- green
            NeoTreeSymbolicLinkTarget = { fg = '#d3869b', italic = true }, -- pinkish

            -- Git Status
            NeoTreeGitAdded = { fg = '#a9b665' },     -- green
            NeoTreeGitModified = { fg = '#e78a4e' },  -- orange
            NeoTreeGitDeleted = { fg = '#ea6962' },   -- red
            NeoTreeGitConflict = { fg = '#d3869b' },  -- purple
            NeoTreeGitUntracked = { fg = '#7daea3' }, -- aqua
            NeoTreeGitIgnored = { fg = '#928374' },   -- greyed out

            -- Diagnostics (LSP)
            NeoTreeDiagnosticError = { fg = '#ea6962' }, -- red
            NeoTreeDiagnosticWarn = { fg = '#e78a4e' },  -- orange
            NeoTreeDiagnosticInfo = { fg = '#7daea3' },  -- aqua
            NeoTreeDiagnosticHint = { fg = '#a9b665' },  -- green
        }

        -- Apply highlights
        for group, opts in pairs(highlights) do
            vim.api.nvim_set_hl(0, group, opts)
        end
    end,
}
