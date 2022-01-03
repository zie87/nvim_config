-- ############################################################################
-- # COLORSCHEME
-- ############################################################################

require "zie.theme.nightfox"

require("lualine").setup {
  options = {
    theme = "nightfox",
  },
  sections = { lualine_c = { require("auto-session-library").current_session_name } },
}
