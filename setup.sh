#!/usr/bin/bash
#

mkdir -p ~/.config/nvim

cp nvim_config ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo "You now need to install install nodejs and npm" 
echo "then you need to install Coc via npm"
printf "Once in Neovim you need to run the following commands\nCocInstall coc-go\nCocInstall coc-rls\nCocInstall coc-python\n"
