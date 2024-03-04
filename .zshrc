# zstyle :omz:plugins:ssh-agent agent-forwarding on
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
# faster pasting?
zstyle ':bracketed-paste-magic' active-widgets '.self-*'


setopt no_autocd
###############################
#ALIASES
###############################
alias vi="vim"
alias now="date"
alias icat="kitty +kitten icat"
alias hist="history -D -E"
alias googler="googler --url-handler=googler_urlhandler"
alias neofetch="neofetch --backend kitty"
alias snippets="vim ~/.vim/UltiSnips/"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
###############################
#CUSTOM FUNCTIONS
###############################

oldest() {
    ls -tr $1 | head -n1
}
newest() {
    ls -t $1 | head -n1
}

###############################
#ENVIROMENT
###############################
export HISTTIMEFORMAT="%F %T "
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export TERMINAL=/usr/bin/kitty
export TerminalEmulator=i3-sensible-terminal
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH=$PATH:/usr/java/jre1.6.0_24/bin/
export GOPATH=$HOME/go
# export GOROOT=/usr/bin/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOPATH
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
# export PATH=$PATH:$GOROOT/bin
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

export PLANTUML_JAR="/usr/share/java/plantuml/plantuml.jar"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)
