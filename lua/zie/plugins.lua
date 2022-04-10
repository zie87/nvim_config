-- ############################################################################
-- # PLUGIN MANAGEMENT
-- ############################################################################

local fn = vim.fn

-- auto install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

local use = require("packer").use
require("packer").startup(function()
  -- let Packer manage itself
  use { "wbthomason/packer.nvim" }
  -- file management
  use { "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" }
  use { "kevinhwang91/rnvimr" }
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "p00f/nvim-ts-rainbow", requires = "nvim-treesitter/nvim-treesitter" }
  use {
    "sudormrfbin/cheatsheet.nvim",
    requires = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
  }
  -- telescope
  use { "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  -- lsp
  use { "neovim/nvim-lspconfig" }
  -- formatting
  use { "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" }
  -- completion
  use {
    "hrsh7th/nvim-cmp",
    requires = { { "hrsh7th/cmp-buffer" }, { "hrsh7th/cmp-nvim-lsp" } },
  }
  use { "onsails/lspkind-nvim" }
  -- refactoring
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }
  -- snippet engine
  use { "L3MON4D3/LuaSnip" }
  -- debuggers
  use { "rcarriga/nvim-dap-ui", requires = "mfussenegger/nvim-dap" }
  use {
    "nvim-telescope/telescope-dap.nvim",
    requires = {
      { "mfussenegger/nvim-dap" },
      { "nvim-telescope/telescope.nvim" },
    },
  }
  -- build systems
  use {
    "Shatur/neovim-cmake",
    requires = {
      { "mfussenegger/nvim-dap" },
      { "nvim-telescope/telescope.nvim" },
    },
  }
  -- sessions
  use { "rmagatti/auto-session" }
  use {
    "rmagatti/session-lens",
    requires = { { "rmagatti/auto-session" }, { "nvim-telescope/telescope.nvim" } },
  }
  -- others
  use { "akinsho/toggleterm.nvim" }
  use { "muellan/vim-brace-for-umlauts" }
  use { "Yggdroot/indentLine" }
  use { "lewis6991/spellsitter.nvim", requires = "nvim-treesitter/nvim-treesitter" }
  -- themes
  use { "EdenEast/nightfox.nvim" }
  use { "hoob3rt/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
end)