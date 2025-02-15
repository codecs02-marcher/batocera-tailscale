#!/bin/bash

case "$1" in
    start)

        # Restart logic: Loop to check time
        (
            while true; do
                current_time=$(date +%H:%M)  # Get current time HH:MM

                if [[ "$current_time" == "20:00" ]]; then
                    echo "Scheduled shutdown at $current_time"
                    shutdown -h now
                fi

                sleep 60  # Check every minute
            done
        ) &
        ;;
    stop)
        ;;
esac
