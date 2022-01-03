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
-- TODO: luasni
-- TODO: codi
-- TODO: lsp-saga?
-- TODO: Harpoon? https://github.com/ThePrimeagen/harpoon
-- TODO: Whichkey?

-- TODO: west build Integration
-- TODO: remote container integration
-- TODO: spell-cmp and spellsitter

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
require "zie/cmake"
-- session handling
require "zie/session"
-- telescope
require "zie/telescope"
-- terminal
require "zie/terminal"
-- general utils
require "zie/utils"
-- load theme
require "zie/theme"
