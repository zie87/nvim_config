vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'} -- empty by default
vim.g.nvim_tree_disable_netrw = 1  --"1 by default, disables netrw
--vim.g.nvim_tree_hijack_netrw = 1   --"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_hide_dotfiles = 1  --0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_follow = 1         --"0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_auto_close = 1     --0 by default, closes the tree when it's the last window
--global.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.

vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
       unstaged = "✗",
       staged = "✓",
       unmerged = "",
       renamed = "➜",
       untracked = "★",
       deleted = "",
       ignored = "◌"
    },
    folder = {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    },
    lsp = {
        hint = "",
        info = "",
        warning = "",
        error = "",
    }
}

local keymap = vim.api.nvim_set_keymap
keymap('n', '<leader>e',':NvimTreeToggle<CR>', {noremap = true})
keymap('n', '<F5>',     ':NvimTreeRefresh<CR>', {noremap = true})
--keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', {noremap = true})


-- Make Ranger replace netrw and be the file explorer
vim.g.rnvimr_ex_enable = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_bw_enable = 1

keymap('n', '<leader>R',  ":RnvimrToggle<CR>", {noremap = true})
