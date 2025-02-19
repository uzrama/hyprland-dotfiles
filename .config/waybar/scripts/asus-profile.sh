#!/bin/bash

text=$(asusctl profile -p | awk '{printf($4)}')
if [ "$text" == "Quiet" ]; then
    class="quiet"
elif [ "$text" == "Balanced" ]; then
    class="balanced"
elif [ "$text" == "Performance" ]; then
    class="performance"
fi
printf '{"text": "%s", "class": "%s" }\n' "$text" "$class"
