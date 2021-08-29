-- ############################################################################
-- # KEYBINDINGS
-- ############################################################################

vim.g.mapleader      = [[-]]
vim.g.maplocalleader = [[,]]

local keymap = vim.api.nvim_set_keymap

-- clean search highlight
keymap('n', '<leader><space>', ':noh<CR>', {noremap = true, silent = true})

-- better navigation between windows
keymap('n', '<c-j>', '<c-w>j', {noremap = true})
keymap('n', '<c-h>', '<c-w>h', {noremap = true})
keymap('n', '<c-k>', '<c-w>k', {noremap = true})
keymap('n', '<c-l>', '<c-w>l', {noremap = true})
-- split window handling
keymap('n', '<leader>w-', '<c-W>s', {noremap = true}) -- horizontal split
keymap('n', '<leader>w|', '<c-W>v', {noremap = true}) -- vertical split
keymap('n', '<leader>w=', '<c-W>=', {noremap = true}) -- balance windows
-- Use alt + hjkl to resize windows
keymap('n', '<m-j>', ':resize -2<CR>',          {noremap = true})
keymap('n', '<m-k>', ':resize +2<CR>',          {noremap = true})
keymap('n', '<m-h>', ':vertical resize -2<CR>', {noremap = true})
keymap('n', '<m-l>', ':vertical resize +2<CR>', {noremap = true})

-- move selected line / block of text in visual mode
keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})
-- better indenting
keymap('v', '<', '<gv', {noremap = true, silent = true})
keymap('v', '>', '>gv', {noremap = true, silent = true})
