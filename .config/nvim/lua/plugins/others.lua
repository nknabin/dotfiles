return {
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

    {
        "Mofiqul/adwaita.nvim",
        lazy = false,
        priority = 1000,
    },


    -- markdown preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        config = function()
            require("todo-comments").setup({
                keywords = {
                    TODO = { color = "#ff0000" },
                    HACK = { color = "#ff6600" },
                    NOTE = { color = "#008000" },
                    FIXME = { color = "#f06292" },
                    LEFTOFF = { color = "#ffff99" },
                },
                highlight = {
                    pattern = [[(KEYWORDS)\s*(\([^\)]*\))?:]],
                    keyword = "fg",
                },
            })
        end
    },
}
