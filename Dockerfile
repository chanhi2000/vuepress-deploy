FROM node:20.17.0-slim as base

LABEL "com.github.actions.name"="Vuepress deploy"
LABEL "com.github.actions.description"="A GitHub Action to build and deploy Vuepress sites to GitHub Pages"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/chanhi2000/vuepress-deploy"
LABEL "homepage"="https://github.com/chanhi2000/vuepress-deploy"
LABEL "maintainer"="chanhi2000 <chanhi2000@gmail.com>"

RUN apt-get update && apt-get install -y git jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
