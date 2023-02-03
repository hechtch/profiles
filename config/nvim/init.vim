"nvim having been installed via the deb package https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb (0.8.3)

"vim-plug having been installed via the following curl command
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

call plug#end()

luafile ~/.config/nvim/init.lua

