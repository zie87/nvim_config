-- ############################################################################
--
--  ▄███████▄   ▄█     ▄████████
-- ██▀     ▄██ ███    ███    ███
--       ▄███▀ ███▌   ███    █▀
--  ▀█▀▄███▀▄▄ ███▌  ▄███▄▄▄
--   ▄███▀   ▀ ███▌ ▀▀███▀▀▀
-- ▄███▀       ███    ███    █▄
-- ███▄     ▄█ ███    ███    ███
--  ▀████████▀ █▀     ██████████
--
-- Github: https://github.com/zie87/nvim_config
--
-- ############################################################################

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.g.mapleader = [[-]]
vim.g.maplocalleader = [[,]]

-- load basic configs
require "zie/performance"
require "zie/base_cfg"
require "zie/keymap"
-- load plugins
require "zie/plugins"
-- load file management
require "zie/fb"
-- language config
require "zie/lsp"
require "zie/dap"
require "zie/refactoring"
-- session handling
require "zie/session"
-- telescope
require "zie/telescope"
-- terminal
require "zie/terminal"
-- neorg
-- require "zie/neorg"
-- general utils
require "zie/utils"
-- load theme
require "zie/theme"
