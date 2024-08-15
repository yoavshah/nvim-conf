wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage

chmod u+x nvim.appimage && ./nvim.appimage

mv nvim.appimage ~/.bin/nvim.appimage
sudo mv ~/.bin/nvim.appimage /usr/bin/nvim.appimage


set inside .bashrc the alias
alias nvim='~/.bin/nvim.appimage'


# Title
## Install fonts
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"

Then inside Konsole settings set the font of your profile (exit and run it again if you can't see it)

