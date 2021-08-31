-- ############################################################################
-- # COLORSCHEME
-- ############################################################################

local catppuccino = require("catppuccino")

-- configure it
catppuccino.setup(
    {
        colorscheme = "dark_catppuccino",
        transparency = false,
        styles = {
            comments = "italic",
            functions = "italic",
            keywords = "italic",
            strings = "NONE",
            variables = "NONE",
        },
        integrations = {
            treesitter = true,
            native_lsp = {
                enabled = true,
                styles = {
                    errors = "italic",
                    hints = "italic",
                    warnings = "italic",
                    information = "italic"
                }
            },
            lsp_trouble = false,
            lsp_saga = false,
            gitgutter = false,
            gitsigns = false,
            telescope = false,
            nvimtree = {
                enabled = false,
                show_root = false,
            },
            which_key = false,
            indent_blankline = false,
            dashboard = false,
            neogit = false,
            vim_sneak = false,
            fern = false,
            barbar = false,
            bufferline = false,
            markdown = false,
        }
    }
)

-- load it
catppuccino.load()


require('lualine').setup{
    options = { theme  = 'iceberg_dark' },
}

require'bufferline'.setup{}

local keymap = vim.api.nvim_set_keymap
keymap('n', '<TAB>',   ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})


