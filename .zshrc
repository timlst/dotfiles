zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa
plugins=(
    archlinux #pacman shortcuts 
    #autojump
    colored-man-pages
    docker
    docker-compose
    gpg-agent
    history-substring-search
    pip
    virtualenvwrapper # working with virtual envs more comfortable
    ssh-agent
    themes
    zsh-autosuggestions
    zsh-syntax-highlighting
)
    
# Path to your oh-my-zsh installation.
export ZSH="/home/tistorm/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ssh-agent agent-forwarding on
zstyle ':completion:*' ignored-patterns '*.synctex.gz|*.aux|*.fdb_latexmk|*.fls'


setopt no_autocd
###############################
#ALIASES
###############################
# alias visudo="sudoedit"
alias venv="virtualenv"
alias vi="vim"
alias now="date"
alias icat="kitty +kitten icat"
alias hist="history -D -E"
alias googler="googler --url-handler=googler_urlhandler"
alias neofetch="neofetch --backend kitty"
alias snippets="vim ~/.vim/UltiSnips/"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias upbvpn="(cd ~/Universität/vpn/ && sudo openvpn upb.conf)"
###############################
#CUSTOM FUNCTIONS
###############################

oldest() {
    ls -tr $1 | head -n1
}
newest() {
    ls -t $1 | head -n1
}
videolength() {
    mediainfo $1 | grep -m 1 Duration
}
duplicatescreen() {
    xrandr --output HDMI-A-0 --same-as eDP
}
secondscreen() {
    xrandr --output HDMI-A-0 --right-of eDP
}
ldmres() {
    systemctl restart lightdm.service
}
rand() {
    if [[ $# -eq 2 ]]
    then
        echo $(($RANDOM%$2+$1))
    elif [[ $# -eq 1 ]]
    then
        echo $(($RANDOM%$1+1))
    else
        echo "Insufficient arguments."
    fi
}

###############################
#ENVIROMENT
###############################
export HISTTIMEFORMAT="%F %T "
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export TerminalEmulator=i3-sensible-terminal

###############################
#custom functions
###############################
#
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
