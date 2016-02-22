
if [ -n "$SSH_CLIENT" ]; then text="(ssh)"
fi

#PS1='\w\$ '
#PS1='\u@\h:\w\$ '  # Default
#PS1='\[\033[32m\w:\\$\033[0m\] '
PS1='\[\033[32m\u@\h${text}:\w\\$\033[0m\] '

# 別名定義ファイルの読み込み
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# minttyの色設定をSolarizedに
source ~/etc/mintty-colors-solarized/sol.dark

# lsの色設定をSolarizedに
eval `dircolors ~/etc/dircolors-solarized/dircolors.ansi-dark`

