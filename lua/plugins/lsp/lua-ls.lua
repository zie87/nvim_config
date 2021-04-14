-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)

local sumneko_root_path =  vim.fn.stdpath('data') .. "/lspinstall/lua"
local sumneko_script = sumneko_root_path .. "/sumneko-lua-language-server"

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_script},
    -- on_attach = require'lsp'.common_on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize global objects for vim and awesomewm
                globals = {'vim', 'awesome', "tag", "screen", "client"}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library =  {[vim.fn.expand('$VIMRUNTIME/lua')] = true,
                            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                            [vim.fn.expand('/usr/share/awesome/lib')] = true},
                maxPreload = 10000
            }
        }
    }
}
