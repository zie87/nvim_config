# Zie's Neovim

This setup is for [neovim >= v0.5.0](https://github.com/neovim/neovim/releases/tag/v0.5.0)

# Installation

## install neovim

status can be checked with `:checkhealth`

```.sh
# Ubuntu installation
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt install neovim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

sudo apt install python3-dev python3-pip
pip3 install pynvim
```

```.sh
# Arch Linux installation 
sudo pacman -Syu
sudo pacman -S neovim
sudo pacman -S python-pip

pip3 install pynvim
```

## install plugin dependencies

A lot of plugins are using [Rust](https://www.rust-lang.org/) tools. To install them we use Crago provided by [rustup](https://rustup.rs/)

```.sh
# rustup installation
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

We need:
* [bat](https://github.com/sharkdp/bat): an advanced [`cat`](https://man7.org/linux/man-pages/man1/cat.1.html) clone
* [ripgrep](https://github.com/BurntSushi/ripgrep): line-oriented recursive search tool
* [fd](https://github.com/sharkdp/fd): fast alternative for [`find`](https://www.gnu.org/software/findutils/)

```.sh
cargo install bat ripgrep fd-find
```

We need also some additional python tools
* [ranger](https://github.com/ranger/ranger) a vim inspired console filemanger

```.sh
pip3 install ranger-fm
```

## install plugins

On the first start a lot of error messages will occure. This happens because of missing plugins.
[Packer](https://github.com/wbthomason/packer.nvim) is used for package management and will automatically be installed on the first startup.
To install the remaining plugins simply run `:PackerSync` inside of [Neovim](https://neovim.io/).

# Plugins

## Language Server Protocol (LSP)

Since [Neovim v0.5.0](https://github.com/neovim/neovim/releases/tag/v0.5.0) it supports the Language Server Protocol. This means it acts as a client forLSP servers.
This configuration uses some plugins to simplify the LSP server configurations:
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): handles launching and initializing LSP server taht are installed
* [nvim-lspinstall](https://github.com/kabouzeid/nvim-lspinstall): adds install features for [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim): provides a performent UI for LSP data

### Keyboard Shortcuts

| mode  | keys      | effect                    |
|:-----:|:---------:|:--------------------------|
| **n** |`gD`       | goto declaration          |
| **n** |`gd`       | goto definition           |
| **n** |`gT`       | goto type definition      |
| **n** |`gi`       | list all implementations  |
| **n** |`gr`       | list all references       |  
| **n** |`gh`       | find references           |   
| **n** |`K`        | show hover                |    
| **n** |`C-k`      | show signature help       |


| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`<space>wa`    | add workspace folder      |
| **n** |`<space>wr`    | remove workspace folder   |
| **n** |`<space>wl`    | list workspace folder     |

| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`<space>f`     | format current buffer     |
| **n** |`<space>cr`    | rename                    |
| **n** |`<space>ca`    | code action               |
| **v** |`<space>ca`    | range code action         |

| mode  | keys          | effect                            |
|:-----:|:-------------:|:----------------------------------|
| **n** |`<space>q`     | set diagnostic loclist            |
| **n** |`<space>dl`    | show line diagnostic              |
| **n** |`<space>dn`    | goto next diagnostic error        |
| **n** |`<space>dn`    | goto previous diagnostic error    |

## Code Completion

Code completion are provided via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) the plugins are:
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): completion engine based on sources
* [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) source for buffer words
* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) source for [Neovim](https://neovim.io/) builtin LSP
* [cmp-tabnine](https://github.com/tzachar/cmp-tabnine): [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) source for [tabnine](https://www.tabnine.com/) AI source completion

## Telescope (fuzzy finder)

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is used as fuzzy finder and general utility plugin
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): extensible fuzzy finder over lists
* [telescope-heading.nvim](https://github.com/crispgm/telescope-heading.nvim): switch between headings (Markdown, AsciiDoc, ...)
* [cheatsheet.nvim](https://github.com/sudormrfbin/cheatsheet.nvim): searchable cheatsheets 

### Keyboard Shortcuts

| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`<leader>pp`   | telescope builtins        |
| **n** |`<leader>ft`   | telescope headings        |
| **n** |`<leader>ff`   | find files                |
| **n** |`<leader>fg`   | live grep                 |
| **n** |`<leader>fh`   | help tags                 |
| **n** |`<leader>fm`   | recently used files       |

| mode  | keys          | effect                    |
|:-----:|:-------------:|:--------------------------|
| **n** |`<leader>;`    | telescope buffer          |
| **n** |`<leader>r`    | file browser              |
| **n** |`<leader>/`    | fuzzy find current buffer |

# Guides and resources

* [Awesome Neovim (rockerBOO)](https://github.com/rockerBOO/awesome-neovim)
* [r/neovim](https://www.reddit.com/r/neovim/)

* [A Vim Guide For Experts](https://thevaluable.dev/vim-expert/)
* [Getting started using Lua in Neovim](https://github.com/nanotee/nvim-lua-guide)

# Other configurations

* [NvChad](https://github.com/NvChad/NvChad)
* [brainfucksec](https://github.com/brainfucksec/neovim-lua)
* [ibhagwan](https://github.com/ibhagwan/nvim-lua)
* [tjdevries](https://github.com/tjdevries/config_manager/tree/master/xdg_config/nvim)

# TODOS

* Debug Adapter Protocol (DAP)
    - [nvim-dap](https://github.com/mfussenegger/nvim-dap)
    - [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)

# NOTES/MAYBE

* [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
* [nvim-treesitter-context](https://github.com/romgrk/nvim-treesitter-context)
* [spellsitter](https://github.com/lewis6991/spellsitter.nvim)
* 
* [kommentary](https://github.com/b3nj5m1n/kommentary)
* [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
* [cmp-path](https://github.com/hrsh7th/cmp-path)
* [fzf-lua](https://github.com/ibhagwan/fzf-lua)
* [diffview.nvim](https://github.com/sindrets/diffview.nvim)
* [which-key.nvim](https://github.com/folke/which-key.nvim)
* [vim-ultest](https://github.com/rcarriga/vim-ultest)
