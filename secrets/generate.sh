#!/bin/bash

set -e pipefail
trap - SIGINT
echo "
===============================================
|Secrets automation!
===============================================
running as: $(id -u):$(id -g)
Follow the instructions!!!
"
hr() {
  echo "============================"
}
hr
read -p "Enter APP_NAME (ex: teste-loki): " APP_NAME
read -p "Enter NAMESPACE (default is APP_NAME use only to overryde!): " NAMESPACE
read -p "Enter KEY: " KEY
read -p "Enter VALUE: " VALUE
hr
echo "Select target env (folder)"
PS3="Type the relative number of the folder options and press enter: "
select ENV in dev prd; do break; done
hr
echo "Select cluster certificate"
PS3="Type the relative number of the cluster pub key and press enter: "
select CLUSTER in ops; do break; done
hr
if [ -z "${NAMESPACE}" ]; then
  NAMESPACE=$APP_NAME
fi
hr
echo "Typed infos:
APP_NAME:${APP_NAME}
NAMESPACE:${NAMESPACE}
KEY:${KEY}
VALUE:${VALUE}
ENV:${ENV}
"
hr
CERT_PATH="secrets/clusters/$CLUSTER/pub.crt"
APP_PATH="apps/$APP_NAME/overlays/$ENV"
SECRET_FILE="$APP_PATH/secrets.yaml"

if [ ! -f "${CERT_PATH}" ]; then
  echo "cluster cert $CERT_PATH not found"
  exit 1
fi
if [ -f "${SECRET_FILE}" ]; then
  echo -n ${VALUE} | kubectl create secret generic \
    "${APP_NAME}-secrets" \
    --namespace ${NAMESPACE} \
    --dry-run=client \
    --from-file=${KEY}=/dev/stdin \
    -o yaml | kubeseal \
    --cert=${CERT_PATH} \
    --format=yaml --merge-into ${SECRET_FILE}
else
  echo -n ${VALUE} | kubectl create secret generic \
    "${APP_NAME}-secrets" \
    --namespace ${NAMESPACE} \
    --dry-run=client \
    --from-file=${KEY}=/dev/stdin \
    -o yaml | kubeseal \
    --cert=${CERT_PATH} \
    --format=yaml >${SECRET_FILE}
fi

echo "generated secret: ${SECRET_FILE}"
hr
echo "ありがとうごさいますみんさなん！！！
$(git status -s ${APP_PATH})
"
