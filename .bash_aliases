alias vi='/c/Program\ Files/vim74-kaoriya-win64/gvim.exe'
alias vim='/c/Program\ Files/vim74-kaoriya-win64/gvim.exe'
alias gvim='/c/Program\ Files/vim74-kaoriya-win64/gvim.exe'
#alias ls='ls -F --color=auto'
alias ls='ls -F --color=auto --show-control-chars'
alias la='ls -AF'
alias ll='ls -l'
alias cp='cp -i'
#alias mv='mv -i'
#alias rm='rm -i'

# Windowsコマンドの文字化け対策.
function wincmd() {
    CMD=$1
    shift
    $CMD $* 2>&1 | iconv -f cp932 -t utf-8
}
alias ping='wincmd ping'
alias ipconfig='wincmd ipconfig'
alias netstat='wincmd netstat'
