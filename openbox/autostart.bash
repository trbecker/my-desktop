#!/bin/bash
# Openbox autostart script, by Thiago Rafael Becker

# Ah, gnome...
# See https://bugs.launchpad.net/ubuntu/+source/at-spi2-core/+bug/1193236
export NO_AT_BRIDGE=1

LOG_FILE=~/.openbox-autostart.log

if [ -e ${LOG_FILE} ] ; then
    rm ${LOG_FILE}
fi

exec 1<&-
exec 2<&-

exec 1<>${LOG_FILE}
exec 2>&1

echo "Start time $(date +%Y-%m-%d-%H-%M-%S)"
echo "Shell is ${SHELL}"

function start_app {
    APP=$1
    if which ${APP}; then
        shift
        ${APP} ${@} &
    else
        echo "${APP} not found"
    fi
}

# Start the settings daemon
# You may change the settings daemon to one of your chosing
start_app unity-settings-daemon

# Start the session manager
start_app openbox-session

# Disable nautilus desktop
start_app gconftool-2 -s -t bool /apps/nautilus/preferences/show_desktop false
start_app gconftool-2 -s -t bool /desktop/gnome/background/draw_background false

start_app gsettings set org.gnome.desktop.background show-desktop-icons false

start_app stalonetray --dockapp-mode simple \
        --geometry 1x2-0+0 \
        --grow-gravity S \
        -f 2 \
        --icon-gravity NW \
        --max-geometry 1x0 &

start_app slack
start_app skype

