#!/usr/bin/env bash

TAGS=(stijntilleman/php-cs-fixer:3 stijntilleman/php-cs-fixer)

for TAG in "${TAGS[@]}"; do
    docker build . -t "${TAG}"

    docker push "${TAG}"
done
