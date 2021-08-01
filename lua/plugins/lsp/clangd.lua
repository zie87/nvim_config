
-- local clangd_root_path =  vim.fn.stdpath('data') .. "/lspinstall/cpp/clangd"
-- local clangd_script    = clangd_root_path .. "/bin/clangd"

local clangd_nvim = require'clangd_nvim'

require'lspconfig'.clangd.setup {
    cmd = { "clangd",
            "--background-index",
            "--suggest-missing-includes",
            "--clang-tidy",
            "--header-insertion=iwyu",
    },
    capabilities = {
        textDocument = {
            semanticHighlightingCapabilities = {
                semanticHighlighting = true
            }
        }
    },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    init_options = {
            compilationDatabasePath="build",
    },
    on_init = clangd_nvim.on_init
}

-- clangd_nvim.enable()
