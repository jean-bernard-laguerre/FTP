#!/bin/bash

systemctl stop proftpd
systemctl stop ssh

apt -y purge proftpd-*
apt -y purge openssh-server
