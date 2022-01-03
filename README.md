# Zie's Neovim

## Telescope (fuzzy-finder)

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is used as fuzzy finder and general utility plugin
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): extensible fuzzy finder over lists
* [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim): [fzf](https://github.com/junegunn/fzf) like fuzzy finding
* [telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim): Integration for [nvim-dap](https://github.com/mfussenegger/nvim-dap) with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) 

| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`<leader>pp`   | telescope builtins        |
| **n** |`<leader>fb`   | telescope buffer          |
| **n** |`<leader>ff`   | find files                |
| **n** |`<leader>fg`   | live grep                 |
| **n** |`<leader>fm`   | recently used files       |
| **n** |`<leader>fh`   | help tags                 |

| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`<leader>/`    | fuzzy find current buffer |

## Terminals

[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) plugin to persist and toggle multiple terminals during an editing session

| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`C-t`          | toggle horizontal terminal|
| **n** |`<leader>tp`   | open bpython              |
| **n** |`<leader>tg`   | open gitui                |

## Sessions

## Utilities

* [vim-brace-for-umlauts](https://github.com/muellan/vim-brace-for-umlauts): simple VIM plugin to improve the coding experience on German QUERTZ keyboards
* [indenLine](https://github.com/Yggdroot/indentLine):  displaying thin vertical lines at each indentation level
