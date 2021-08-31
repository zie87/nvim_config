local core = require('zie.lsp.core')

require'lspconfig'.clangd.setup {
    cmd = { "clangd",
            "--background-index",
            "--suggest-missing-includes",
            "--clang-tidy",
            "--header-insertion=iwyu",
    },
    on_attach = core.on_attach,
    capabilities = core.capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp" },
    init_options = {
            compilationDatabasePath="build",
    },
}
