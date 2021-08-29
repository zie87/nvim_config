-- ############################################################################
-- # TELESCOPE
-- ############################################################################

require('telescope').load_extension('heading')

local keymap = vim.api.nvim_set_keymap
keymap('n', '<leader>pp', "<cmd>lua require('telescope.builtin').builtin()<CR>", {noremap = true})

keymap('n', '<leader>ft', "<cmd>:Telescope heading<CR>", {noremap = true})
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true})
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
keymap('n', '<leader>fm', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", {noremap = true})

keymap('n', '<leader>;',  "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
keymap('n', '<leader>r',  "<cmd>lua require('telescope.builtin').file_browser()<CR>", {noremap = true})
keymap('n', '<leader>/',  "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true})


