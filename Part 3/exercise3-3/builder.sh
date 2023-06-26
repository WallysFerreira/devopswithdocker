#!/bin/sh

GITHUB=http://github.com
GITHUB_PATH=${1}

git clone ${GITHUB}/${GITHUB_PATH}

sudo docker build -t ${2} .
sudo docker push ${2}
