MPD="$(mpc | head -n 2 | tr '\n' ' ' | sed 's/^\(.*\)\( \[.*\)/\1/')"
MPD_STATE="$(mpc | head -n 2 | tr '\n' ' ' | grep -oG '\[.*\]')"
if [ -z "$MPD" ]; then
    echo "<fc=#ff5500>period@20 swell@4-5'nw w@5knotts</fc>"
else
    if [ "$MPD_STATE" = "[paused]" ]; then
        echo "<fc=#ff5500>$MPD</fc>"
    elif [ -z "$MPD_STATE" ]; then
        echo "<fc=#ff5500>period@20 swell@4-5'nw w@5knotts</fc>"
    else
        echo "<fc=#0055ff>$MPD</fc>"
    fi
fi

