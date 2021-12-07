#!/usr/bin/env bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install redis bitnami/redis --values values.yaml

sleep 60 # Wait 60 seconds to have the entire cluster deployed and than retrieve the master and slaves internal domain names

kubeclt logs -f redis-node-0 -c sentinel