#!/bin/bash
#
find $HOME/cronjob/cron_logs -mtime +30 -a -type f -print
find $HOME/cronjob/cron_logs -type f -mtime +30 -delete