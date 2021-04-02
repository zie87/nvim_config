require'bufferline'.setup{}

local map = require('utilities').map

map('n', '<TAB>',   ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})


