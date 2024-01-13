# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Aliases
alias wallpaper='feh --bg-fill $1'
alias random-wallpaper='feh --bg-fill --randomize $1'
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
export LIBVA_DRIVER_NAME=iHD
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.9.0.9-1.fc39.x86_64
export PATH=/home/toonvdw/.local/bin:/home/toonvdw/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/bin
export PATH=$PATH:/home/toonvdw/.cargo/bin
