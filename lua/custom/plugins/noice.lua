return {
    'folke/noice.nvim',
    event = 'CmdlineEnter',
    opts = {
        cmdline = {
            format = {
                cmdline = { title = '' },
                search_down = { view = 'cmdline' }, -- search in command line
                search_up = { view = 'cmdline' },
                filter = { title = '' },
                lua = { title = '' },
                help = { title = '' },
                input = { title = '' },
            },
        },
        -- hide search virtual text
        routes = {
            {
                filter = {
                    event = 'msg_show',
                    kind = 'search_count',
                },
                opts = { skip = true },
            },
        },
    },
    dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-lua/plenary.nvim',
        'rcarriga/nvim-notify',
    },
}

