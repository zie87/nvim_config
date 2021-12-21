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

vim.g.mapleader = [[-]]
vim.g.maplocalleader = [[,]]

-- TODO: Dashboard
-- TODO: luasnip
-- TODO: lsp-saga?
-- TODO: Harpoon? https://github.com/ThePrimeagen/harpoon
-- TODO: Whichkey?
-- TODO: codi
-- TODO: floaterm

-- load basic configs
require "zie/base_cfg"
require "zie/performance"
require "zie/keymap"
-- load plugins
require "zie/plugins"
-- load file management
require "zie/fb"
-- language config
require "zie/lsp"
require "zie/dap"
require "zie/refactoring"
-- telescope
require "zie/telescope"
-- load theme
require "zie/theme"
