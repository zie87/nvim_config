local global = vim.g

-- global.nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
global.nvim_tree_disable_netrw = 1  --"1 by default, disables netrw
global.nvim_tree_hijack_netrw = 1   --"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
global.nvim_tree_hide_dotfiles = 1  --0 by default, this option hides files and folders starting with a dot `.`
global.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
global.nvim_tree_follow = 1         --"0 by default, this option allows the cursor to be updated when entering a buffer
global.nvim_tree_auto_close = 1     --0 by default, closes the tree when it's the last window
--global.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.
global.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = ""
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = ""
    }
}


local which_key_map = require('plugins.utils.whichkey').key_map
which_key_map['e'] = {':NvimTreeToggle<CR>', 'explorer' }
