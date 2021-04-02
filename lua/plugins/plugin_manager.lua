local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]] -- needed because of optional install
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]] -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    -- color
    use 'tanvirtin/monokai.nvim'
    -- utils
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
end)
