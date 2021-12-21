-- ############################################################################
-- # COLORSCHEME
-- ############################################################################

-- require('zie.themes.catppuccino')
require('zie.themes.github')
-- require('zie.themes.nightfox')
-- require('zie.themes.sonokai')

require('lualine').setup{
    options = { theme  = 'iceberg_dark' },
}

require'bufferline'.setup{}

local keymap = vim.api.nvim_set_keymap
keymap('n', '<TAB>',   ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})


