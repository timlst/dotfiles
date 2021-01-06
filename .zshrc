zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa
plugins=(
    archlinux #pacman shortcuts 
    #autojump
    colored-man-pages
    gpg-agent
    history-substring-search
    pip
    virtualenvwrapper # working with virtual envs more comfortable
    ssh-agent
    themes
    zsh-autosuggestions
    zsh_reload
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

# alias visudo="sudoedit"
alias venv="virtualenv"
alias vi="vim"
alias now="date"
alias icat="kitty +kitten icat"
alias hist="history -D -E"
alias googler="googler --url-handler=googler_urlhandler"
alias newest="ls -t $1 | head -n1" 
alias upbvpn="cd ~/Universität/vpn/; sudo openvpn upb.conf"
alias neofetch="neofetch --backend kitty"
alias snippets="vim ~/.vim/UltiSnips/"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

export HISTTIMEFORMAT="%F %T "

oldest() {
    ls -tr $1 | head -n1
}
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)
