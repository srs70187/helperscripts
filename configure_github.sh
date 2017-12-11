#!/bin/bash

git config --global user.name "srs70187"
git config --global user.email "steven.r.soloway@gmail.com"

ssh-keygen -b 4096 -t rsa -C "steven.r.soloway@gmail.com" -f ~/.ssh/github-key-desktop
ssh-add ~/.ssh/github-key-desktop

