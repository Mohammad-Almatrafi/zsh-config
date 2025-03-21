SOURCING_PATH="$(pwd)"
RELATIVE_PATH_TO_CONFIG="${funcsourcetrace[1]%/*}"
ABSOSLUTE_PATH_TO_CONFIG="${SOURCING_PATH}/${RELATIVE_PATH_TO_CONFIG}"

sudo apt install zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

sudo apt install ruby ruby-rubygems ruby-dev  

sudo gem install colorls
TIME_OF_SCRIPT=$(date +"%Y-%m-%d_%H-%M-%S")

cd $HOME
mv $HOME/.zshrc $HOME/.zshrc.pre_config${TIME_OF_SCRIPT}
touch .zshrc

echo "source \"${ABSOSLUTE_PATH_TO_CONFIG}zshConfig.sh\"" > $HOME/.zshrc
 
