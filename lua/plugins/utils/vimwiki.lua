local global = vim.g

global.vimwiki_list = {{path = '~/Documents/vimwiki', syntax = 'markdown', ext = '.md'}}
-- add extension to markdown links
global.vimwiki_markdown_link_ext = 1 


-- key mappings

local which_key_map = require('plugins.utils.whichkey').key_map

which_key_map.v = {
    name = '+vimwiki',
    ['w'] = {':VimwikiIndex<CR>'        , 'open wiki index'    },
    ['i'] = {':VimwikiDiaryIndex<CR>'   , 'open diary index'   },
    ['t'] = {':VimwikiTabIndex<CR>'     , 'open tap index'     },
    ['d'] = {':VimwikiMakeDiaryNote<CR>', 'create diary entry' },
}

-- n  -w-m          <Plug>VimwikiMakeTomorrowDiaryNote                                                                                                                                                                  
-- n  -w-y          <Plug>VimwikiMakeYesterdayDiaryNote                                                                                                                                                                 
-- n  -w-t          <Plug>VimwikiTabMakeDiaryNote                                                                                                                                                                        
-- n  -w-i          <Plug>VimwikiDiaryGenerateLinks
                                                                                                                                                               
-- n  -w-w          <Plug>VimwikiMakeDiaryNote          
-- n  -wi           <Plug>VimwikiDiaryIndex                                                                                                                                                                             
-- n  -wt           <Plug>VimwikiTabIndex                                                                                                                                                                               
-- n  -ww           <Plug>VimwikiIndex  
