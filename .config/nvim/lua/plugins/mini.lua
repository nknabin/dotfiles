return {
    {
        'echasnovski/mini.comment',
        version = false,
        config = function()
            require('mini.comment').setup()
        end
    },

    { 'echasnovski/mini.pairs', version = '*',

        config = function()
            require('mini.pairs').setup()
        end
    },
}
