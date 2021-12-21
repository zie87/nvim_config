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

-- TODO: Whichkey
-- TODO: Dashboard
-- TODO: luasnip
-- TODO: lsp-saga?
-- TODO: Harpoon? https://github.com/ThePrimeagen/harpoon
-- TODO: floaterm
-- TODO: codi

-- load basic configs
require "zie/base_cfg"
require "zie/performance"
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
