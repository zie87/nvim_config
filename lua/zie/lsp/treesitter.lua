-- ############################################################################
-- # TREESITTER
-- ############################################################################

require("nvim-treesitter.configs").setup {
  ensure_installed = {"c", "lua", "cpp", "rust", "ada", "zig", "python", "rst", "markdown"},
  ignore_install = { "haskell", "javascript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = false, disable = { "python", "html", "javascript" } },
  autotag = { enable = true },
  context_commentstring = {
    enable = true,
    config = {
      javascriptreact = { style_element = "{/*%s*/}" },
    },
  },
  refactor = { highlight_definitions = { enable = true } },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}

require("cheatsheet").setup {
  -- Whether to show bundled cheatsheets

  -- For generic cheatsheets like default, unicode, nerd-fonts, etc
  bundled_cheatsheets = true,
  -- bundled_cheatsheets = {
  --     enabled = {},
  --     disabled = {},
  -- },

  -- For plugin specific cheatsheets
  bundled_plugin_cheatsheets = true,
  -- bundled_plugin_cheatsheets = {
  --     enabled = {},
  --     disabled = {},
  -- }

  -- For bundled plugin cheatsheets, do not show a sheet if you
  -- don't have the plugin installed (searches runtimepath for
  -- same directory name)
  include_only_installed_plugins = true,
}
