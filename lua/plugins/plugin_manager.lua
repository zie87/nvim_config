local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]] -- needed because of optional install
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]] -- Auto compile when there are changes in plugins.lua


local use = require('packer').use

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    -- git
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim' } }

    -- language server
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-compe'}
    use {'kabouzeid/nvim-lspinstall', requires = 'neovim/nvim-lspconfig'}
    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- color
    use {'norcalli/nvim-colorizer.lua'}
    use {'zie87/monokai.nvim'}
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use {'glepnir/galaxyline.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    -- utils
    use {'glepnir/dashboard-nvim'}
    use {'AckslD/nvim-whichkey-setup.lua', requires = {'liuchengxu/vim-which-key'}}
    use {'dhruvasagar/vim-table-mode'}
    use {'davidgranstrom/nvim-markdown-preview'}
    -- utils - finder
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
    -- utils - explorer
    use {'kevinhwang91/rnvimr'}
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
end)
