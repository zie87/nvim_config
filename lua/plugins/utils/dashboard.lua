
local global = vim.g

--global.dashboard_preview_command   = 'bat'
global.dashboard_custom_header = {
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

global.dashboard_default_executive = 'telescope'
global.dashboard_session_directory = '~/.cache/nvim/session'

global.dashboard_custom_section = {
    a = {description = {'  File Browser       '}, command = ':RnvimrToggle'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find File          '}, command = 'Telescope find_files'},
    e = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    f = {description = {'  Settings           '}, command = ':e ~/.config/nvim/nv-settings.lua'}
}

global.dashboard_custom_footer = {'https://github.com/zie87/nvim_config'}
