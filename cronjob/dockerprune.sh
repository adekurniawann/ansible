#!/bin/bash
#
mkdir -p $HOME/cronjob/cron_logs
docker image prune -a --force --filter "until=24h" >> "$HOME/cronjob/cron_logs/dockerimageprune-$(date +\%y-\%m-\%d_\%H\%M\%S).log" 2>&1
find $HOME/cronjob/cron_logs -type f -mtime +30 -delete