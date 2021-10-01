-- ############################################################################
-- # PACKAGE MANAGEMENT
-- ############################################################################

local fn = vim.fn

-- auto install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

require('packer').startup(function()
    -- let Packer manage itself
    use {'wbthomason/packer.nvim'}
    -- needed for lsp
    use {'neovim/nvim-lspconfig'}
    use {'kabouzeid/nvim-lspinstall', requires = 'neovim/nvim-lspconfig'}
    use {'glepnir/lspsaga.nvim', requires = 'neovim/nvim-lspconfig'}
    
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- Additional textobjects for treesitter
    use {'nvim-treesitter/nvim-treesitter-textobjects'}

    -- needed for autocompletion
    use {'hrsh7th/nvim-cmp', requires = {{"hrsh7th/cmp-buffer"},
                                         {"hrsh7th/cmp-nvim-lsp"},}}
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    -- telescope
    use {'nvim-telescope/telescope.nvim',   requires = {{'nvim-lua/plenary.nvim'} } }   
    use {'crispgm/telescope-heading.nvim',  requires = {{'nvim-telescope/telescope.nvim'},}}
    use {'sudormrfbin/cheatsheet.nvim',     requires = {{'nvim-telescope/telescope.nvim'},
                                                        {'nvim-lua/plenary.nvim'},}}
    -- floatterm
    use {'voldikss/vim-floaterm'}
    -- codi scratchpad
    use {'metakirby5/codi.vim'}
    -- filemanager
    use {'kevinhwang91/rnvimr'}
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    -- theme/colorscheme
    use {"Pocco81/Catppuccino.nvim"}
    use {"projekt0n/github-nvim-theme"}
    use {'EdenEast/nightfox.nvim'}
    use {'sainnhe/sonokai'}
    use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
    use {'akinsho/bufferline.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
end)
