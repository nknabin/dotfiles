return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- use {'dracula/vim', as = 'dracula'}

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- orgmode
    use {
        'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup{}
    end,
    }
end)
