#!/bin/bash

#from https://cran.r-project.org/bin/linux/ubuntu/
# R-Studio mirror: https://cloud.r-project.org/

#sudo sh -c "echo 'deb https://cloud.r-project.org//bin/linux/ubuntu artful/' >> /etc/apt/sources.list"

#sudo apt-get update

gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

wget https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb

sudo apt-get update && \
  sudo apt-get r-base r-base-dev gdebi-core -y

sudo gdebi rstudio-server-1.1.383-amd64.deb -y