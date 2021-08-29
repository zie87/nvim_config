local global = vim.g

global.vimwiki_list = {{path = '~/Documents/vimwiki',
                        path_html = '~/Documents/vimwiki/html',
                        syntax = 'markdown', 
                        ext = '.md',
                        template_path = '~/Workspace/research/pandoc-goodies/templates/html5/github', 
                        template_default= 'GitHub', 
                        template_ext = '.html5',
                        custom_wiki2html = '~/.config/nvim/scripts/wiki2html.sh',
}}
-- add extension to markdown links
global.vimwiki_markdown_link_ext = 1 
--global.vimwiki_listsyms = '✗○◐●✓'
--global.vimwiki_customwiki2html='~/.local/share/nvim/site/pack/packer/start/vimwiki/autoload/vimwiki/customwiki2html.sh'
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
