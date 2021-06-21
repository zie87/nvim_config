
local clangd_root_path =  vim.fn.stdpath('data') .. "/lspinstall/cpp/clangd"
local clangd_script    = clangd_root_path .. "/bin/clangd"



require'lspconfig'.clangd.setup {
    cmd = {clangd_script},
    -- on_attach = require'lsp'.common_on_attach,
   -- handlers = {
   --     ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
   --         virtual_text = true,
   --         signs = true,
   --         underline = true,
   --         update_in_insert = true

   --     })
   -- }
}
