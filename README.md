# Redis-sentinel 

This project contains a simple bash file(`install.sh`) that installs a Redis cluster with Sentinel using Helm.

## Prerequisites

- Helm 3
- Kubernetes >1.16
- kubectl


## Installation

1. **Be sure to be in the correct kubernetes context and namespace before proceeding**. You can set the default context
 and namespace with the following command `kubectl config set-context --current --namespace=[your_target_namespace]`

2. Execute `. install.sh` to have Redis installed in your target namespace. After 60 seconds you will see the first Sentinel
 node's logs, with the domain names of Redis's cluster instances to pick and put as values in the entando-server-deployment
 manifest inside the `Environment` section. Put the master as first entry and one of the slaves as second argument for the
 `REDIS_ADDRESSES` env var.

```yaml
REDIS_ACTIVE: true
REDIS_ADDRESSES: redis-node-0.redis-headless.[namespace].svc.cluster.local:26379,redis-node-1.redis-headless.[namespace].svc.cluster.local:26379,redis-node-2.redis-headless.[namespace].svc.cluster.local:26379
```

## Customizations

If you need to customize the installation(storage size, memory, storageclass) you can use the `values.yaml` file.
