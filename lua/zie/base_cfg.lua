-- ############################################################################
-- # BASIC CONFIGURATIONS
-- ############################################################################

local indent_size = 4
vim.opt.expandtab = true -- use space instead of tabs
vim.opt.shiftwidth = indent_size -- size of an indent
vim.opt.smartindent = true -- indert indents automatically
vim.opt.tabstop = indent_size -- number of spaces a tab counts for
--vim.bo.softtabstop = indent_size        -- number of spaces a tab counts for

vim.o.mouse = "nvih" -- enable mouse support (all but command mode)
vim.o.hidden = true -- enable modified buffers in background
vim.o.splitbelow = true -- put new windows below current
vim.o.splitright = true -- put new windows right of current

vim.o.ignorecase = true -- ignore case letter when searching
vim.o.smartcase = true -- casesensitive if search string has upper case

vim.o.termguicolors = true -- true color support
vim.o.guifont = "Mononoki Nerd Font:h12" -- font for gui frontends
vim.o.clipboard = "unnamedplus" -- copy paste between vim and everything else

vim.wo.number = true -- print line number
-- vim.wo.relativenumber   = true      -- relative line numbers
vim.wo.cursorline = true -- enable highlighting of the current line
vim.wo.colorcolumn = "80,120" -- line wisth markers
vim.wo.signcolumn = "yes:1" -- show column for additional information (e.g. LSP)
vim.wo.wrap = false -- disable line wrap

vim.cmd ":command! WQ wq"
vim.cmd ":command! WQ wq"
vim.cmd ":command! Wq wq"
vim.cmd ":command! Wqa wqa"
vim.cmd ":command! W w"
vim.cmd ":command! Q q"
vim.cmd ":command! Qa qa"
