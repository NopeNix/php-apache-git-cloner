#!/bin/bash

# Cloning GitHub Repo
echo "Cloning $GITREPO.."
GITREPOLOWERCASE=$(echo $GITREPO|tr '[:upper:]' '[:lower:]')
GITREPONAME=$(echo $GITREPOLOWERCASE|awk -F '/' '{print $2}')
cd /tmp
echo "Trying git clone https://$GITTOKEN@github.com/$GITREPOLOWERCASE.git"
git clone https://$GITTOKEN@github.com/$GITREPOLOWERCASE.git
echo ""

# Remove default html files
echo "removing default html files.."
rm -R /var/www/html/*
echo ""

# Move Files...
echo "Copying Files to /var/www/html .."
cp -R "./$GITREPONAME/html/" /var/www/html/
echo ""

# Start Apache
echo "Starting apache Server.."
apachectl -DFOREGROUND