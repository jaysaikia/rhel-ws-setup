#!/bin/bash

### Setup EPEL ###
subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

### Repo Update ###
dnf -y update

### Install Java 21, Java 17, Java 11, Java 8
dnf -y install java-1.8.0-openjdk-devel java-1.8.0-openjdk-javadoc java-1.8.0-openjdk-src
dnf -y install java-11-openjdk-devel java-11-openjdk-javadoc java-11-openjdk-src
dnf -y install java-17-openjdk-devel java-17-openjdk-javadoc java-17-openjdk-src
dnf -y install java-21-openjdk-devel java-21-openjdk-javadoc java-21-openjdk-src

### Install NodeJS 20
dnf -y module install nodejs:20

### Install Chromium, Podman, Maven ###
dnf -y install chromium podman maven
