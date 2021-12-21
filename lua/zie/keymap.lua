local keymap = vim.api.nvim_set_keymap

-- clean search highlight
keymap("n", "<leader><space>", ":noh<CR>", { noremap = true, silent = true })

-- split window handling
keymap("n", "<leader>w-", "<c-W>s", { noremap = true }) -- horizontal split
keymap("n", "<leader>w|", "<c-W>v", { noremap = true }) -- vertical split
keymap("n", "<leader>w=", "<c-W>=", { noremap = true }) -- balance windows
