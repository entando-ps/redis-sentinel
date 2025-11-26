#!/usr/bin/env bash
CHART_VERSION=17.7.5
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install redis bitnami/redis --version ${CHART_VERSION} --values values.yaml

sleep 60 # Wait 60 seconds to have the entire cluster deployed and than retrieve the master and slaves internal domain names

kubectl logs -f redis-node-0 -c sentinel
