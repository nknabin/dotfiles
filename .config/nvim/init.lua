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

require('plugins')

-- setup orgmode
-- init.lua

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
    org_agenda_files = {'~/code/orgs/**/*'},
    org_default_notes_file = '~/code/orgs/todo.org',
})
