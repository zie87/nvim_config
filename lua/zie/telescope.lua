-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require("telescope").setup {
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    repo = {
      list = {
        search_dirs = { "~/Workspace/work", "~/Workspace/zie87" },
      },
    },
  },
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension "fzf"
require("telescope").load_extension "file_browser"
require("telescope").load_extension "dap"

vim.g['rooter_cd_cmd'] = 'lcd'
require("telescope").load_extension "repo"
require("telescope").load_extension "session-lens"
-- require("telescope").load_extension "cmake"

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>pp", "<cmd>lua require('telescope.builtin').builtin()<CR>", { noremap = true })

keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { noremap = true })
keymap("n", "<leader>fm", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { noremap = true })
-- keymap("n", "<leader>fs", "<cmd>lua require('session-lens').search_session()<CR>", { noremap = true })
keymap("n", "<leader>fq", "<cmd>lua require('telescope.builtin').quickfix()<CR>", { noremap = true })

keymap("n", "<leader>/", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", { noremap = true })

-- file browser
keymap("n", "<leader>r", ":Telescope file_browser<CR>", { noremap = true })
keymap("n", "<leader>R", ":Telescope file_browser path=%:p:h<CR>", { noremap = true })
