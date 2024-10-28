#!/bin/sh

case "$1" in
    start)
        echo "Startup to load the scull and the faulty driver"
        /usr/bin/module_load faulty
        /usr/bin/scull_load 
        modprobe hello
        /usr/bin/aesdchar_load
        ;;
    stop)
        echo "Shutdown to unload the scull and the faulty driver"
        /usr/bin/module_unload faulty 
        /usr/bin/scull_unload 
        rmmod hello
        /usr/bin/aesdchar_unload
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0