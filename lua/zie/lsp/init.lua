-- ############################################################################
-- # LSP CONFIGURATION
-- ############################################################################

local nvim_saga = require 'lspsaga'
nvim_saga.init_lsp_saga()

-- COMPLETION
local cmp = require('cmp')
cmp.setup {
    sources = {
        { name = 'nvim_lsp'},
        { name = 'cmp_tabnine' },
        { name = 'buffer'  },
    },
    mapping = {
         ['<S-Tab]>'] = cmp.mapping.select_prev_item(),
         ['<Tab>'] = cmp.mapping.select_next_item()
    },
    completion = {completeopt = 'menu,menuone,noinsert'}
}

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
})

-- SERVER CONFIGURATIONS
require('zie.lsp.clangd')
require('zie.lsp.lua-ls')
