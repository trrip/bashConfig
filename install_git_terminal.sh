if [ -f ~/.bash_profile ]; then
    cp ~/.bash_profile ~/.bash_profile_backup
fi
cp .git-completion.bash ~/.git-completion.bash
cp .git-prompt.sh ~/.git-prompt.sh
cp .bash_profile ~/.bash_profile
echo ". ~/.bash_profile" >> ~/.bashrc
echo "Installation finished.\n Rerstart terminal."
