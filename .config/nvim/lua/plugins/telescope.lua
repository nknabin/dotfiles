return {
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        keys = {
            {
                "<leader>ff",
                function()
                    require('telescope.builtin').find_files()
                end,
                desc = 'Telescope find files',
            },
            {
                "<leader>fs",
                function()
                    require('telescope.builtin').live_grep()
                end,
                desc = 'Telescope live grep',
            },
            {
                "<leader>fr",
                function()
                    require('telescope.builtin').oldfiles()
                end,
                desc = 'Telescope old files',
            },
            {
                "<leader>fb",
                function()
                    require('telescope.builtin').buffers()
                end,
                desc = 'Telescope buffers',
            },
            {
                "<leader>fh",
                function()
                    require('telescope.builtin').help_tags()
                end,
                desc = 'Telescope help tags',
            },
            {
                "<leader>fw",
                function()
                    require('telescope.builtin').grep_string()
                end,
                desc = 'Telescope grep string',
            },
            {
                "<leader>fd",
                function()
                    require('telescope.builtin').diagnostics()
                end,
                desc = 'Telescope diagnostics',
            },
            {
                "<leader>ds",
                function()
                    require('telescope.builtin').lsp_document_symbols()
                end,
                desc = 'Telescope lsp document symbols',
            },
            {
                "<leader>ws",
                function()
                    require('telescope.builtin').lsp_workplace_symbols()
                end,
                desc = 'Telescope lsp workspace symbols',
            },
        },
        config = function()
            require('telescope').setup{
                pickers = {
                    find_files = {
                        hidden = true,
                        find_command = {
                            "rg",
                            "--files",
                            "--hidden",
                            "--no-ignore-vcs",
                            "--glob",
                            "!{**/.git/*,**/*.c.o,**/*.c.d,**/node_modules/*,**/lib/*,**/webglpackage/*}",
                        },
                    },
                    live_grep = {
                        -- Activates search for hidden files in live search
                        additional_args = function(_ts)
                            return { "--hidden" }
                        end,
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,                    -- false will only do exact matching
                        override_generic_sorter = true,  -- override the generic sorter
                        override_file_sorter = true,     -- override the file sorter
                        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    }
                }
            }

            require('telescope').load_extension('fzf')
        end,
    },
}
