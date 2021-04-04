local utils = require('utilities')
local opt = utils.opt
local map = utils.map

local global = vim.g
global.mapleader      = [[-]]
global.maplocalleader = [[,]]

-- Use alt + hjkl to resize windows
map('n', '<m-j>', ':resize -2<CR>',          {noremap = true})
map('n', '<m-k>', ':resize +2<CR>',          {noremap = true})
map('n', '<m-h>', ':vertical resize -2<CR>', {noremap = true})
map('n', '<m-l>', ':vertical resize +2<CR>', {noremap = true})

-- Better window navigation
map('n', '<c-h>', '<c-w>h', {noremap = true})
map('n', '<c-j>', '<c-w>j', {noremap = true})
map('n', '<c-k>', '<c-w>k', {noremap = true})
map('n', '<c-l>', '<c-w>l', {noremap = true})

-- better indenting
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
map('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
map('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- clean search highlight
map('n', '<leader><space>', ':noh<CR>', {noremap = true, silent = true})
