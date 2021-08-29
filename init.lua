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


-- disable unused plugins
require("zie/disable_plugins")
-- load base configurations
require("zie/base_config")
-- load keymappings
require("zie/keymappings")

-- load plugins
require("zie/plugins")

-- theme/colorscheme
require("zie/themes")

-- lsp & completion config
require("zie/lsp")
require("zie/treesitter")

-- utils
require("zie/filebrowser")
require("zie/telescope")
require("zie/floaterm")
