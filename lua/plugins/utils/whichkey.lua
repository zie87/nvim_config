local which_key = require("whichkey_setup")
local which_key_map = {}

which_key_map.w = {
    name = '+windows',
    ['w'] = {'<C-W>w'     , 'other-window'          },
    ['d'] = {'<C-W>c'     , 'delete-window'         },
    ['-'] = {'<C-W>s'     , 'split-window-below'    },
    ['|'] = {'<C-W>v'     , 'split-window-right'    },
    ['2'] = {'<C-W>v'     , 'layout-double-columns' },
    ['h'] = {'<C-W>h'     , 'window-left'           },
    ['j'] = {'<C-W>j'     , 'window-below'          },
    ['l'] = {'<C-W>l'     , 'window-right'          },
    ['k'] = {'<C-W>k'     , 'window-up'             },
    ['H'] = {'<C-W>5<'    , 'expand-window-left'    },
    ['J'] = {'resize +5'  , 'expand-window-below'   },
    ['L'] = {'<C-W>5>'    , 'expand-window-right'   },
    ['K'] = {'resize -5'  , 'expand-window-up'      },
    ['='] = {'<C-W>='     , 'balance-window'        },
    ['s'] = {'<C-W>s'     , 'split-window-below'    },
    ['v'] = {'<C-W>v'     , 'split-window-below'    },
}

local function register_maps() 
    which_key.register_keymap('leader', which_key_map)
end

return {key_map = which_key_map, setup = register_maps}

