#!/bin/bash

### Setup OpenVPN repo ###
dnf install -y https://packages.openvpn.net/openvpn-openvpn3-epel-repo-1-1.noarch.rpm

### Install OpenVPN client ###
dnf install -y openvpn3-client
