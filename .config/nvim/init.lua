-- Set mapleader to comma
vim.g.mapleader = ","

vim.opt.compatible = false
vim.opt.guifont = { "Iosevka Nerd Font Mono:h14" }

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.wo.relativenumber = true
vim.wo.number = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = false

vim.o.autochdir = true
vim.o.cinoptions = 'l1'

-- Disable auto comment
vim.cmd([[
  augroup FormatOptions
    autocmd!
    autocmd FileType * lua vim.opt.formatoptions:remove({ 'c', 'r', 'o' })
  augroup END
]])

-- Copy to clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', { noremap = true })

-- Paste from clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', { noremap = true })
