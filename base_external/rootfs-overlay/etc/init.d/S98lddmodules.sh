#!/bin/sh

case "$1" in
    start)
        echo "Startup to load the scull and the faulty driver"
        /usr/bin/module_load
        /usr/bin/scull_load
        modprobe hello
        ;;
    stop)
        echo "Shutdown to unload the scull and the faulty driver"
        /usr/bin/module_unload
        /usr/bin/scull_unload
        rmmod hello
        ;;
    *)
        echo "Usage: $0 {startup|stop}"
    exit 1
esac

exit 0