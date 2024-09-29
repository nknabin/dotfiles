vim.opt.guifont = { "Iosevka Nerd Font Mono:h14" }

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

local opt = vim.opt

vim.opt.compatible = false

opt.relativenumber = false
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

opt.cursorline = true

opt.termguicolors = true
--[[ opt.background = "dark" ]]
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus") -- use system clipboard to copy

opt.splitright = true
opt.splitbelow = true

-- Disable auto comment
vim.cmd([[
    augroup FormatOptions
    autocmd!
    autocmd FileType * lua vim.opt.formatoptions:remove({ 'c', 'r', 'o' })
    augroup END
    ]])

-- Set mapleader to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

-- Copy to clipboard
keymap.set('v', '<leader>y', '"+y', { noremap = true })
keymap.set('n', '<leader>Y', '"+yg_', { noremap = true })
keymap.set('n', '<leader>y', '"+y', { noremap = true })
keymap.set('n', '<leader>yy', '"+yy', { noremap = true })

-- Paste from clipboard
keymap.set('n', '<leader>p', '"+p', { noremap = true })
keymap.set('n', '<leader>P', '"+P', { noremap = true })
keymap.set('v', '<leader>p', '"+p', { noremap = true })
keymap.set('v', '<leader>P', '"+P', { noremap = true })

-- neovim
keymap.set('n', '<leader>hr', ':source $MYVIMRC<CR>', { noremap = true, silent = true, desc= 'Reload config' })
keymap.set('n', '<leader>qq', ':qa<CR>', { noremap = true, silent = true })

-- buffers
keymap.set('n', '<leader>fs', ':w<CR>', { noremap = true, silent = true })

keymap.set('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })
keymap.set('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true })


-- lazy
require("config.lazy")
keymap.set('n', '<leader>l', ':Lazy<CR>', { noremap = true, silent = true })

-- colorscheme
vim.cmd[[colorscheme gruvbox]]

