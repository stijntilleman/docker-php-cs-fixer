#!/usr/bin/env bash

TAGS=(stijntilleman/php-cs-fixer:2)

for TAG in "${TAGS[@]}"; do
    docker build . -t "${TAG}"

    docker push "${TAG}"
done
