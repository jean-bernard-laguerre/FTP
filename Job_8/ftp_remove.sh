#!/bin/bash

systemctl stop proftpd
systemctl stop ssh

apt purge proftpd-*
apt purge openssh-server
