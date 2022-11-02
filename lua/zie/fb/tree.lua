local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })
keymap("n", "<F5>", ":NvimTreeRefresh<CR>", { noremap = true })
-- keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', {noremap = true})
-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

-- a list of groups can be found at `:help nvim_tree_highlight`
-- highlight NvimTreeFolderIcon guibg=blue

require("nvim-tree").setup()
