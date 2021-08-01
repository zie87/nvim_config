require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

local which_key_map = require('plugins.utils.whichkey').key_map
which_key_map.s = {
    name = '+search',
    ['.'] = {':Telescope filetypes<CR>'                   , 'filetypes'},
    ['B'] = {':Telescope git_branches<CR>'                , 'git branches'},
    ['d'] = {':Telescope lsp_document_diagnostics<CR>'    , 'document_diagnostics'},
    ['D'] = {':Telescope lsp_workspace_diagnostics<CR>'   , 'workspace_diagnostics'},
    ['f'] = {':Telescope find_files<CR>'                  , 'files'},
    ['h'] = {':Telescope command_history<CR>'             , 'history'},
    ['m'] = {':Telescope marks<CR>'                       , 'marks'},
    ['M'] = {':Telescope man_pages<CR>'                   , 'man_pages'},
    ['o'] = {':Telescope vim_options<CR>'                 , 'vim_options'},
    ['t'] = {':Telescope live_grep<CR>'                   , 'text'},
    ['r'] = {':Telescope registers<CR>'                   , 'registers'},
    ['w'] = {':Telescope file_browser<CR>'                , 'buf_fuz_find'},
    ['u'] = {':Telescope colorscheme<CR>'                 , 'colorschemes'},
}
