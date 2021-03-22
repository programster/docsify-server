#!/bin/bash

# Remap the www-data user as appropriate.
/bin/bash /root/permission-fix.sh

# Start the supervisor service in the foreground
/usr/bin/supervisord
