-------------------------------------------------------------------------------
-- BRACES FOR UMLAUTS
-- ----------------------------------------------------------------------------

local keymap = vim.api.nvim_set_keymap
keymap("n", "<c-space>", ":UmlautsToggle<CR>", { noremap = true })

-------------------------------------------------------------------------------
-- INDENT LINES
-- ----------------------------------------------------------------------------

vim.g.indentLine_char_list = { "|", "¦", "┆", "┊" }

-------------------------------------------------------------------------------
-- SPELLSITTER
-- ----------------------------------------------------------------------------
require("spellsitter").setup {
  -- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
  enable = true,

  -- Spellchecker to use. values:
  -- * vimfn: built-in spell checker using vim.fn.spellbadword()
  -- * ffi: built-in spell checker using the FFI to access the
  --   internal spell_check() function
  spellchecker = "vimfn",
}
