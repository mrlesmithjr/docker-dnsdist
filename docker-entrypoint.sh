#!/bin/bash

ansible-playbook -i "localhost," -c local /docker-entrypoint.yml \
  --extra-vars "rancher_access_key=$RANCHER_ACCESS_KEY \
  rancher_host=$RANCHER_HOST \
  rancher_host_port=$RANCHER_HOST_PORT \
  rancher_project_id=$RANCHER_PROJECT_ID \
  rancher_secret_key=$RANCHER_SECRET_KEY \
  rancher_service_name=$RANCHER_SERVICE_NAME \
  rancher_stack_name=$RANCHER_STACK_NAME"

exec supervisord -n
