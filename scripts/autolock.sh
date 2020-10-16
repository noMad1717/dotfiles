#!/bin/bash

export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Run xidlehook
# Will not lock screen when a full screen application is running
# or when audio is output
# After 120 seconds of user inactivity screen will be dimmed until user becomes active
# After another 60 seconds the screen will lock
# After another hour the system will suspend
xidlehook                                                                   \
    --not-when-fullscreen                                                   \
    --not-when-audio                                                        \
    --timer 120                                                             \
        'xrandr --output "$PRIMARY_DISPLAY" --brightness .1'                \
        'xrandr --output "$PRIMARY_DISPLAY" --brightness 1'                 \
    --timer 60                                                              \
        'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; ~/lock.sh'      \
        ''                                                                  \
    --timer 3600                                                            \
        'systemctl suspend'                                                 \
        ''

