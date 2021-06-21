-- lsp extensions
require('plugins.lsp.completion')

-- language server
require('plugins.lsp.lua-ls')
require('plugins.lsp.clangd')

-- formatter
require('plugins.lsp.efm')


local utils = require('utilities')
local map = utils.map

map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>',          {noremap = true, silent = true})
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>',         {noremap = true, silent = true})
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>',          {noremap = true, silent = true})
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>',      {noremap = true, silent = true})

local which_key_map = require('plugins.utils.whichkey').key_map

-- let g:which_key_map['l'] = {
--       \ 'name' : '+lsp' ,
--       \ '.' : [':CocCommand clangd.switchSourceHeader'  , 'switch header'],
--       \ ';' : ['<Plug>(coc-refactor)'                   , 'refactor'],
--       \ 'a' : ['<Plug>(coc-codeaction)'                 , 'line action'],
--       \ 'A' : ['<Plug>(coc-codeaction-selected)'        , 'selected action'],
--       \ 'b' : [':CocNext'                               , 'next action'],
--       \ 'B' : [':CocPrev'                               , 'prev action'],
--       \ 'c' : [':CocList commands'                      , 'commands'],
--       \ 'e' : [':CocList extensions'                    , 'extensions'],
--       \ 'h' : ['<Plug>(coc-float-hide)'                 , 'hide'],
--       \ 'I' : [':CocList diagnostics'                   , 'diagnostics'],
--       \ 'j' : ['<Plug>(coc-float-jump)'                 , 'float jump'],
--       \ 'l' : ['<Plug>(coc-codelens-action)'            , 'code lens'],
--       \ 'n' : ['<Plug>(coc-diagnostic-next)'            , 'next diagnostic'],
--       \ 'N' : ['<Plug>(coc-diagnostic-next-error)'      , 'next error'],
--       \ 'o' : ['<Plug>(coc-openlink)'                   , 'open link'],
--       \ 'O' : [':CocList outline'                       , 'outline'],
--       \ 'p' : ['<Plug>(coc-diagnostic-prev)'            , 'prev diagnostic'],
--       \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'      , 'prev error'],
--       \ 'q' : ['<Plug>(coc-fix-current)'                , 'quickfix'],
--       \ 'R' : ['<Plug>(coc-rename)'                     , 'rename'],
--       \ 's' : [':CocList -I symbols'                    , 'references'],
--       \ 't' : ['<Plug>(coc-type-definition)'            , 'type definition'],
--       \ 'u' : [':CocListResume'                         , 'resume list'],
--       \ 'U' : [':CocUpdate'                             , 'update CoC'],
--       \ 'v' : [':Vista!!'                               , 'tag viewer'],
--       \ 'z' : [':CocDisable'                            , 'disable CoC'],
--       \ 'Z' : [':CocEnable'                             , 'enable CoC'],
--       \ }

which_key_map.l = {
    name = '+lsp',
    ['d'] = {':lua vim.lsp.buf.definition()<CR>'    , 'definition'     },
    ['D'] = {':lua vim.lsp.buf.declaration()<CR>'   , 'declaration'    },
    ['i'] = {':lua vim.lsp.buf.implementation()<CR>', 'implementation' },
    ['r'] = {':lua vim.lsp.buf.references()<CR>'    , 'references'     },
    ['F'] = {':lua vim.lsp.buf.formatting()<CR>'        , 'format buffer'  },
}

