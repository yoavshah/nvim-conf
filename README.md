wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage

chmod u+x nvim.appimage && ./nvim.appimage

mv nvim.appimage ~/.bin/nvim.appimage
sudo mv ~/.bin/nvim.appimage /usr/bin/nvim.appimage


set inside .bashrc the alias
alias nvim='~/.bin/nvim.appimage'
