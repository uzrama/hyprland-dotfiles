if [ "$@" == "region" ];then
    grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/screenshots/Screenshot-$(date +%F_%T).png 
    notify-send -t 1000 -i ~/Pictures/screenshots/Screenshot-$(date +%F_%T).png "Screenshot" "~/Pictures/screenshots/Screenshot-$(date +%F_%T).png"
elif [ "$@" == "full" ];then
    grim - | wl-copy && wl-paste > ~/Pictures/screenshots/Screenshot-$(date +%F_%T).png
    notify-send -t 1000 -i ~/Pictures/screenshots/Screenshot-$(date +%F_%T).png "Screenshot" "~/Pictures/screenshots/Screenshot-$(date +%F_%T).png"
fi
