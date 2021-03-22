#!/bin/bash

# Remap the www-data user as appropriate.
/bin/bash /root/permission-fix.sh

## Container entry point
#docsify generate

##ENTRYPOINT [ "docsify", "serve", "--port", "80" ]

cron -f