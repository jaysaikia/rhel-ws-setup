#!/bin/bash

### Import Microsoft Keys ###
rpm --import https://packages.microsoft.com/keys/microsoft.asc

### Setup VSCode Repo ###
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

### Setup  Microsoft Prod Repo ###
sh -c 'echo -e "[packages-microsoft-com-prod]\nname=packages-microsoft-com-prod\nbaseurl=https://packages.microsoft.com/rhel/9.0/prod/\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/prod.repo'

### Repo Update ###
dnf -y update

### Install Intune
dnf -y install intune-portal

### Install VSCode ###
dnf -y install code
