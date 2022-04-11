#!/bin/bash
chmod 600 ssh-privKey.pem
git config --global user.email "akbar.alam@cheetay.pk"
git config --global user.name "ak-alam"
date >> trigger
echo "Adding a custom commit for build trigger"
git add .
git commit -m "Pre-Prod build"
GIT_SSH_COMMAND="ssh -i ssh-privKey.pem" git push origin main

echo "Commit Added"
