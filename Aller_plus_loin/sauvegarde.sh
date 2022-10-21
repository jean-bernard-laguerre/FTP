#!/bin/bash

sudo rsync -aAX / --delete /backup_$(date +"%d-%m-%Y_%H:%M") "backup"
