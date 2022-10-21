cd#!/bin/bash

sudo rsync -aAX / --delete /backup_$(date +"%d-%m-%Y_%H:%M") test@10.0.2.5:/Backup
