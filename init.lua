-- ############################################################################
-- # DISABLE UNUSED PLUGINS
-- ############################################################################
vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1

vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1

vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1

-- ############################################################################
-- # BASIC CONFIGURATIONS
-- ############################################################################

local indent_size = 4
vim.bo.expandtab   = true               -- use space instead of tabs
vim.bo.shiftwidth  = indent_size        -- size of an indent
vim.bo.smartindent = true               -- indert indents automatically
vim.bo.tabstop     = indent_size        -- number of spaces a tab counts for
vim.bo.softtabstop = indent_size        -- number of spaces a tab counts for

vim.o.mouse         = 'nvih'    -- enable mouse support (all but command mode)
vim.o.hidden        = true      -- enable modified buffers in background
vim.o.splitbelow    = true      -- put new windows below current
vim.o.splitright    = true      -- put new windows right of current

vim.o.ignorecase    = true  -- ignore case letter when searching 
vim.o.smartcase     = true  -- casesensitive if search string has upper case

vim.o.termguicolors = true                      -- true color support
vim.o.guifont       = 'Mononoki Nerd Font:h12'  -- font for gui frontends
vim.o.clipboard     = 'unnamedplus' -- copy paste between vim and everything else

vim.wo.number           = true      -- print line number
-- vim.wo.relativenumber   = true      -- relative line numbers
vim.wo.cursorline       = true      -- enable highlighting of the current line
vim.wo.colorcolumn      = "80,120"  -- line wisth markers
vim.wo.signcolumn       = 'yes:1'   -- show column for additional information (e.g. LSP)
vim.wo.wrap             = false     -- disable line wrap

-- performance
vim.o.lazyredraw    = true  -- suppress redraw on command execution


vim.cmd(':command! WQ wq')
vim.cmd(':command! WQ wq')
vim.cmd(':command! Wq wq')
vim.cmd(':command! Wqa wqa')
vim.cmd(':command! W w')
vim.cmd(':command! Q q')
vim.cmd(':command! Qa qa')

-- ############################################################################
-- # KEYBINDINGS
-- ############################################################################

vim.g.mapleader      = [[-]]
vim.g.maplocalleader = [[,]]

local keymap = vim.api.nvim_set_keymap
-- keymap('n'. '<c-s>', ':w<CR>', {})
-- keymap('i'. '<c-s>', '<Esc>:w<CR>a', {})

-- better navigation between windows
keymap('n', '<c-j>', '<c-w>j', {noremap = true})
keymap('n', '<c-h>', '<c-w>h', {noremap = true})
keymap('n', '<c-k>', '<c-w>k', {noremap = true})
keymap('n', '<c-l>', '<c-w>l', {noremap = true})

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
    use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use {'akinsho/bufferline.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
end)

-- ############################################################################
-- # COLORSCHEME
-- ############################################################################

local catppuccino = require("catppuccino")

-- configure it
catppuccino.setup(
    {
        colorscheme = "catppuccino",
        transparency = false,
        styles = {
            comments = "italic",
            functions = "italic",
            keywords = "italic",
            strings = "NONE",
            variables = "NONE",
        },
        integrations = {
            treesitter = true,
            native_lsp = {
                enabled = true,
                styles = {
                    errors = "italic",
                    hints = "italic",
                    warnings = "italic",
                    information = "italic"
                }
            },
            lsp_trouble = false,
            lsp_saga = false,
            gitgutter = false,
            gitsigns = false,
            telescope = false,
            nvimtree = {
                enabled = false,
                show_root = false,
            },
            which_key = false,
            indent_blankline = false,
            dashboard = false,
            neogit = false,
            vim_sneak = false,
            fern = false,
            barbar = false,
            bufferline = false,
            markdown = false,
        }
    }
)

-- load it
catppuccino.load()

require('lualine').setup{
    options = { theme  = 'iceberg_dark' },
}

require'bufferline'.setup{}

keymap('n', '<TAB>',   ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

-- ############################################################################
-- # LSP CONFIGURATION
-- ############################################################################

local nvim_lsp  = require 'lspconfig'
local nvim_saga = require 'lspsaga'
nvim_saga.init_lsp_saga()

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gT', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    --buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', 'gr', "<cmd>lua require('telescope.builtin').lsp_references()<CR>", opts)
    buf_set_keymap('n', 'gh', "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>", opts)
   
    -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)<CR>", opts)
    -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
    buf_set_keymap('n', '<C-k>', "<cmd>lua require('lspsaga.signature_help').signature_help()<CR>", opts)
  
    -- workspaces
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)

    -- code actions
    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    -- buf_set_keymap('n', '<space>cr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>cr', "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
    -- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', '<space>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
    buf_set_keymap('v', '<space>ca', "<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)
   
    -- diagnostic
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<space>dl', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '<space>dp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<space>dn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
end

--
-- COMPLETION
--

require'cmp'.setup {
    sources = {   
        { name = 'nvim_lsp'},
        { name = 'buffer'  },
    },
    -- mapping = {
    --     ['<S-Tab]>'] = cmp.mapping.select_prev_item(),
    --     ['<Tab>'] = cmp.mapping.select_next_item()
    -- },
    completion = {completeopt = 'menu,menuone,noinsert'}
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

--
-- SERVER CONFIGURATIONS
--

require'lspconfig'.clangd.setup {
    cmd = { "clangd",
            "--background-index",
            "--suggest-missing-includes",
            "--clang-tidy",
            "--header-insertion=iwyu",
    },
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp" },
    init_options = {
            compilationDatabasePath="build",
    },
}

-- Enable the following language servers
local servers = { 'clangd'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- LSP INSTALL
--

local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end


-- ############################################################################
-- # TREESITTER
-- ############################################################################

require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    -- ignore_install = {"haskell"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = {enable = true, disable = {"python", "html", "javascript"}},
    autotag = {enable = true},
    context_commentstring = {
        enable = true, 
        config = {
            javascriptreact = {style_element = '{/*%s*/}'}
        },
    },
    refactor = {highlight_definitions = {enable = true}},
}

vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'} -- empty by default
vim.g.nvim_tree_disable_netrw = 1  --"1 by default, disables netrw
vim.g.nvim_tree_hijack_netrw = 1   --"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_hide_dotfiles = 1  --0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_follow = 1         --"0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_auto_close = 1     --0 by default, closes the tree when it's the last window
--global.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.

vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
       unstaged = "✗",
       staged = "✓",
       unmerged = "",
       renamed = "➜",
       untracked = "★",
       deleted = "",
       ignored = "◌"
    },
    folder = {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    },
    lsp = {
        hint = "",
        info = "",
        warning = "",
        error = "",
    }
}

keymap('n', '<leader>e',':NvimTreeToggle<CR>', {noremap = true})
keymap('n', '<F5>',     ':NvimTreeRefresh<CR>', {noremap = true})
--keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', {noremap = true})


-- Make Ranger replace netrw and be the file explorer
vim.g.rnvimr_ex_enable = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_bw_enable = 1

keymap('n', '<leader>R',  ":RnvimrToggle<CR>", {noremap = true})

-- ############################################################################
-- # TELESCOPE
-- ############################################################################

require('telescope').load_extension('heading')

keymap('n', '<leader>pp', "<cmd>lua require('telescope.builtin').builtin()<CR>", {noremap = true})

keymap('n', '<leader>ft', "<cmd>:Telescope heading<CR>", {noremap = true})
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true})
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
keymap('n', '<leader>fm', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", {noremap = true})

keymap('n', '<leader>;',  "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
keymap('n', '<leader>r',  "<cmd>lua require('telescope.builtin').file_browser()<CR>", {noremap = true})
keymap('n', '<leader>/',  "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true})

-- ############################################################################
-- # FLOATTERM
-- ############################################################################

vim.g.floaterm_keymap_new   = '<Leader>tt'
vim.g.floaterm_keymap_next  = '<Leader>tl'
vim.g.floaterm_keymap_prev  = '<Leader>th'
vim.g.floaterm_keymap_toggle = '<F12>'

vim.g.floaterm_width  = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_autoclose = 1

