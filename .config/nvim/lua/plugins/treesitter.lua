return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "markdown", "markdown_inline", "python", "solidity", "php", "json", "typescript", "tsx", "yaml", "dockerfile", "gitignore", "bash", },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
}
