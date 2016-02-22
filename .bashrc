
if [ -n "$SSH_CLIENT" ]; then text="(ssh)"
fi

#PS1='\w\$ '
#PS1='\u@\h:\w\$ '  # Default
#PS1='\[\033[32m\w:\\$\033[0m\] '
PS1='\[\033[32m\u@\h${text}:\w\\$\033[0m\] '

# �ʖ���`�t�@�C���̓ǂݍ���
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# mintty�̐F�ݒ��Solarized��
source ~/etc/mintty-colors-solarized/sol.dark

# ls�̐F�ݒ��Solarized��
eval `dircolors ~/etc/dircolors-solarized/dircolors.ansi-dark`

