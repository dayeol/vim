# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# start zsh!
zsh
####################
### Vim settings ###
####################

# apt-vim
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
# nerdtree
PATH=$PATH:.vimpkg/bin apt-vim install -y https://github.com/scrooloose/nerdtree.git

# Vundle #
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# vimrc #
git clone https://github.com/dayeol/vim rQ3RFv
cp -R rQ3RFv/.vim ~/
cp rQ3RFv/.vimrc ~/
rm -rf rQ3RFv

# install plugins #
vim +PluginInstall +qall
