
local efm_root_path =  vim.fn.stdpath('data') .. "/lspinstall/efm"
local efm_script    = efm_root_path .. "/efm-langserver"

require"lspconfig".efm.setup {
    cmd = {efm_script},
    init_options = {documentFormatting = true},
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
                    formatStdin = true
                }
            }
        }
    }
}
