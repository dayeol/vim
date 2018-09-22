# For Ubuntu Only
sudo apt-get install python ctags


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
# oh-my-zsh theme #
cp rQ3RFv/dayeol.zsh-theme ~/.oh-my-zsh/themes/
sed "s/robbyrussell/dayeol/g" -i ~/.zshrc

# tmux plugin for oh-my-zsh
sed "/^plugins=(/ a \ \ tmux" -i ~/.zshrc

# clean repo
rm -rf rQ3RFv

# install plugins #
vim +PluginInstall +qall

# CtrlP #
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# set vimdiff as difftool #
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool

# git config #
git config --global core.editor /usr/bin/vim
git config --global user.name "Dayeol Lee"
git config --global user.email "dayeol@berkeley.edu"

# TMUX setting #
git clone https://github.com/NHDaly/tmux-better-mouse-mode ~/tmux-better-mouse-mode
cp ./tmux.conf ~/.tmux.conf
#echo "run-shell ~/tmux-better-mouse-mode/scroll_copy_mode.tmux" >> ~/.tmux.conf
#echo "set-option -g status-position top" >> ~/.tmux.conf

# finish & reminder #
echo "******** You're all set! ********"
