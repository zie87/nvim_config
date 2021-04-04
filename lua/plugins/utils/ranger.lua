-- https://github.com/kevinhwang91/rnvimr

local global = vim.g

-- Make Ranger replace netrw and be the file explorer
global.rnvimr_ex_enable = 1
global.rnvimr_draw_border = 1

-- Make Ranger to be hidden after picking a file
-- global.rnvimr_pick_enable = 1

-- Make Neovim to wipe the buffers corresponding to the files deleted by Ranger
global.rnvimr_bw_enable = 1
-- register toggle for on whichkey
local which_key_map = require('plugins.utils.whichkey').key_map
which_key_map['r'] = {':RnvimrToggle<CR>'  , 'ranger' }
