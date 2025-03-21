export ZSH="$HOME/.oh-my-zsh"

COSTUM_CONFIG_PATH="${funcsourcetrace[1]%/*}/"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git 
    zsh-syntax-highlighting 
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

source ${COSTUM_CONFIG_PATH}aliasses.sh

source ${COSTUM_CONFIG_PATH}wallpapers.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:/opt/riscv/bin"
