# NVIM

## Installation

[neovim-ppa](https://launchpad.net/~neovim-ppa)

```sh
# Ubuntu
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt install neovim
```

## First start

```sh
# Ubuntu
sudo apt install build-essential # for treesitter

# for ranger integration
sudo apt install ranger python3-pynvim
sudo apt install python3-pip
sudo apt install libjpeg8-dev zlib1g-dev libxtst-dev python3-dev
pip3 install ueberzeug
```

```vim
:PackerSync
```

## Language Server

### Lua

```vim
:LspInstall lua
```

Formatter:

```sh
# Ubuntu
sudo apt install lua5.1 liblua5.1-0-dev```

# luarocks
mkdir -p /tmp/luarocks
cd /tmp/luarocks
wget https://luarocks.org/releases/luarocks-3.7.0.tar.gz
tar -xvf luarocks-3.7.0.tar.gz && cd luarocks-3.7.0
./configure
sudo make bootstrap

# lua formatter (for efm)
sudo apt install cmake
luarocks install --server=https://luarocks.org/dev luaformatter

```

### EFM

```sh
# Ubuntu
sudo apt install golang
```

```vim
:LspInstall efm
```

## Markdown preview

```sh
# Ubuntu
sudo apt install pandoc
```

[yarn](https://classic.yarnpkg.com/en/docs/install/#debian-stable)

```sh
# Ubuntu
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn
```

```sh
yarn global add live-server
```

