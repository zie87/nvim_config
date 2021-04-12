local global = vim.g

-- disable some built-in plugins
local disabled_built_ins = {
  'netrwPlugin', 'matchit'
}

for _, built_in in ipairs(disabled_built_ins) do
  global['loaded_' .. built_in] = 1
end

-- general configurations
local utils = require('utilities')
local opt = utils.opt

local indent = 4
opt('b', 'expandtab', true)                           -- Use spaces instead of tabs
opt('b', 'shiftwidth', indent)                        -- Size of an indent
opt('b', 'smartindent', true)                         -- Insert indents automatically
opt('b', 'tabstop', indent)                           -- Number of spaces tabs count for

opt('o', 'mouse', 'nvih')                             -- Enable mouse support (all but command mode)
opt('o', 'hidden', true)                              -- Enable modified buffers in background
opt('o', 'splitbelow', true)                          -- Put new windows below current
opt('o', 'splitright', true)                          -- Put new windows right of current
opt('o', 'termguicolors', true)                       -- True color support
opt('o', 'clipboard', 'unnamedplus')                  -- Copy paste between vim and everything else
opt('o', 'completeopt', 'menuone,noselect')           -- settings for completion menu

opt('o', 'guifont', 'Mononoki Nerd Font:h14')

opt('w', 'number', true)                              -- Print line number
opt('w', 'relativenumber', true)                      -- Relative line numbers
opt('w', 'cursorline', true)                          -- Enable highlighting of the current line
opt('w', 'signcolumn', 'yes:1')                       -- Show column for additional information (e.g. LSP)

local cmd = vim.cmd

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
cmd(':command! Qa qa')
