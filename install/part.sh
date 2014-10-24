sudo easy_install psutil #For atp_tex
read -p "Copy .vim and vimrc files and run :helptags ~/.vim/doc"

#vim terminal
echo "set editing-mode vi" >> ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc

cd ~
echo "Done"
