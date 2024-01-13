# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# startx on login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] || return
exec startx
 
