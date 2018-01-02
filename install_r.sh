#!/bin/bash

export os_version=`lsb_release -cs`
export rstudio_version=`wget --no-check-certificate -qO- https://s3.amazonaws.com/rstudio-server/current.ver`

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo sh -c "echo 'deb https://cloud.r-project.org/bin/linux/ubuntu $os_version/' >> /etc/apt/sources.list"
sudo apt-get update

wget https://download2.rstudio.org/rstudio-server-$rstudio_version-amd64.deb

sudo apt-get update && \
  sudo apt-get install r-base r-base-dev gdebi-core -y

sudo gdebi rstudio-server-1.1.383-amd64.deb -q