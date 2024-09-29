return {
    { 
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                handlers = {
                    function(ls) require('lspconfig')[ls].setup({}) end,
                },
            })
        end
    },

    "neovim/nvim-lspconfig",

    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path", 

    { 
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require('cmp')

            cmp.setup {
                mapping = cmp.mapping.preset.insert({
                    ["<C-k>"] = cmp.mapping.select_prev_item(), -- prev suggestion
                    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- scroll docs
                    ["<C-f>"] = cmp.mapping.scroll_docs(4), -- scroll docs
                    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                    ["<C-e>"] = cmp.mapping.abort(), -- close completion suggestions
                    ["<CR>"] = cmp.mapping.confirm({ select = false }), -- show completion suggestions
                }),
                sources = cmp.config.sources(
                    {
                        { name = "nvim_lsp" },
                    },
                    {
                        { name = "buffer" },
                        { name = "path" },
                    }
                ),
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
            }
        end
    },
}
