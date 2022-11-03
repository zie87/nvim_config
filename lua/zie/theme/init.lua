-- ############################################################################
-- # COLORSCHEME
-- ############################################################################

--require "zie.theme.nightfox"
--require "zie.theme.kanagawa"
--require "zie.theme.adwaita"
require "zie.theme.doom_one"

require("lualine").setup {
    options = {
        theme = "auto"
    },
    sections = {
        lualine_a = { 'mode', },
        lualine_c = {
            require("auto-session-library").current_session_name,
            { 'filename', path = 1 }
        },
        lualine_y = { 'searchcount', '%p%%/%L' },
        lualine_z = { 'location' },
    },
    tabline = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'buffers' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'tabs' }
    },
    winbar = {},
    inactive_winbar = {},
}
