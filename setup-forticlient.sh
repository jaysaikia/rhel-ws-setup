#!/bin/bash

### Add Forticlient Repo ###
dnf config-manager --add-repo https://repo.fortinet.com/repo/forticlient/7.2/centos/8/os/x86_64/fortinet.repo

### Install forticlient ###
dnf install -y forticlient
