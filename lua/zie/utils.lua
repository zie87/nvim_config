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
-- JEKYLL
-- ----------------------------------------------------------------------------

vim.g.jekyll_post_template =  {
    "---",
    "layout: 'post'",
    "title: 'JEKYLL_TITLE'",
    "date: 'JEKYLL_DATE'",
    "categories: 'JEKYLL_CATEGORIES'",
    "tags: 'JEKYLL_TAGS'",
    "---",
    ""}
