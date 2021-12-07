# Redis-sentinel 

This project contains a simple bash file(`install.sh`) that installs a Redis cluster with Sentinel using Helm.

## Prerequisites

- Helm 3
- Kubernetes >1.16
- kubectl


## Installation

1. **Be sure to be in the correct kubernetes context and namespace before proceeding**. You cen set the default context
 and namespace with the following command `kubectl config set-context --current --namespace=[your_target_namespace]`

2. Execute `. install.sh` to have Redis installed in your target namespace.

## Customizations

If you need to customize the installation(storage size, memory, storageclass) you can use the `values.yaml` file.