#! /bin/bash
export SPRING_DATASOURCE_URL=${SPRING_DATASOURCE_URI}
export SPRING_DATASOURCE_USERNAME=${SPRING_DATASOURCE_USERNAME}
export SPRING_DATASOURCE_PASSWORD=${SPRING_DATASOURCE_PASSWORD}
docker-compose build
sudo docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker-compose push