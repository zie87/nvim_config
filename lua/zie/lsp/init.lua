-- ############################################################################
-- # LSP CONFIGURATION
-- ############################################################################

local nvim_saga = require 'lspsaga'
nvim_saga.init_lsp_saga()

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- COMPLETION
local cmp = require('cmp')
cmp.setup {
    sources = {
        { name = 'nvim_lsp'},
        --{ name = 'copilot' },
        { name = 'cmp_tabnine' },
        { name = 'buffer'  },
    },
    mapping = {
         ['<S-Tab]>'] = cmp.mapping.select_prev_item(),
         ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                local copilot_keys = vim.fn["copilot#Accept"]()
                if copilot_keys ~= "" then
                    vim.api.nvim_feedkeys(copilot_keys, "i", true)
                else
                    fallback()
                end
            end
        end,
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
