echo "Installing 'zsh'..."
sudo yum install -y zsh
if [ $? -ne '0' ]
then
    echo "Install zsh failed."
    exit 1
fi

echo "Changing default shell to 'zsh'..."
chsh -s /bin/zsh
if [ $? -ne '0' ]
then
    echo "Change shell failed."
    exit 1
fi

echo "Install 'oh-my-zsh'..."
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
if [ $? -ne '0' ]
then
    echo "Install oh-my-zsh failed."
    exit 1
fi

echo "Cloning 'zsh-syntax-highlighting'..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if [ $? -ne '0' ]
then
    echo "Install 'zsh-syntax-highlighting' failed."
    exit 1
fi

# echo "Cloning 'zsh-autosuggestions'..."
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# if [ $? -ne '0' ]
# then
#     echo "Install 'zsh-syntax-highlighting' failed."
#     exit 1
# fi

echo "Add plugins to '.zshrc'..."

echo "plugins=( git zsh-syntax-highlighting zsh-autosuggestion z)" >> ~/.zshrc

echo "Please relogin now."

