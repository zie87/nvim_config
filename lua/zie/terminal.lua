-------------------------------------------------------------------------------
-- TOGGLETERM
-- ----------------------------------------------------------------------------

-- essential for toogleterm
vim.o.hidden = true -- enable modified buffers in background

require("toggleterm").setup {
  size = 20,
  open_mapping = [[<c-t>]],
}

-------------------------------------------------------------------------------
-- PYTHON TERMINAL
-- ----------------------------------------------------------------------------

local Terminal = require("toggleterm.terminal").Terminal
local pythonterm = Terminal:new {
  cmd = "bpython",
  direction = "float",
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd "startinsert!"
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd "Closing terminal"
  end,
}

function _python_toggle()
  pythonterm:toggle()
end

-------------------------------------------------------------------------------
-- GITUI TERMINAL
-- ----------------------------------------------------------------------------

local gitui = Terminal:new {
  cmd = "gitui",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd "startinsert!"
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd "Closing terminal"
  end,
}

function _gitui_toggle()
  gitui:toggle()
end

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>tp", "<cmd>lua _python_toggle()<CR>", { noremap = true, silent = true })
keymap("n", "<leader>tg", "<cmd>lua _gitui_toggle()<CR>", { noremap = true, silent = true })
