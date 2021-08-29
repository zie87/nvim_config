-- ############################################################################
-- # TREESITTER
-- ############################################################################

require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    -- ignore_install = {"haskell"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = {enable = false, disable = {"python", "html", "javascript"}},
    autotag = {enable = true},
    context_commentstring = {
        enable = true, 
        config = {
            javascriptreact = {style_element = '{/*%s*/}'}
        },
    },
    refactor = {highlight_definitions = {enable = true}},
}
