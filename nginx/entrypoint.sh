#!/bin/sh

export APP_DOMAIN
export APP_PORT
export APP_SSL_EBABLED

echo "!!! Server listen to ${APP_DOMAIN} !!!"

envsubst '${APP_DOMAIN} ${APP_PORT} ${APP_SSL_EBABLED}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

exec "$@"