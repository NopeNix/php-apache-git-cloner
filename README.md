![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/NopeNix/php-apache-git-cloner/Build%20and%20Push%20to%20Docker%20Hub.yml?label=Build%20and%20Push%20to%20Docker%20Hub)
![GitHub issues](https://img.shields.io/github/issues-raw/NopeNix/php-apache-git-cloner)
![Docker Stars](https://img.shields.io/docker/stars/nopenix/php-apache-git-cloner)
![GitHub Repo stars](https://img.shields.io/github/stars/NopeNix/php-apache-git-cloner?label=GitHub%20Stars)
![GitHub top language](https://img.shields.io/github/languages/top/NopeNix/php-apache-git-cloner)
# php-apache-git-cloner
Clones into a git project using a token and uses the files from the folder "html" inside the repo

## Example docker-compose:
```yml
version: "3"
services:
    app:
        image: nopenix/php-apache-git-cloner
        environment:
            - GITTOKEN=YOURGITTOKENHERE
            - GITREPO=username/repo
        ports:
            - 80:80
```