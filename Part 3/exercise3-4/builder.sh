#!/bin/sh

GITHUB=http://github.com
GITHUB_PATH=${1}

git clone ${GITHUB}/${GITHUB_PATH}

cd $(basename $_)

docker login -u ${DOCKER_USER} -p ${DOCKER_PWD}

docker build -t ${2} .
docker push ${2}
