echo "Installing 'zsh'..."
sudo yum install -y zsh

echo "Changing default shell to 'zsh'..."
chsh -s /bin/zsh

echo "Current default shell: $SEHLL"

echo "Install 'oh-my-zsh'..."
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

echo "Cloning 'zsh-syntax-highlighting'..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Cloning 'zsh-autosuggestions'..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Add plugins to '.zshrc'..."

echo "plugins=( git zsh-syntax-highlighting zsh-autosuggestion z)" >> ~/.zshrc

echo "Please relogin now."

