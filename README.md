# DigitalOcean Kubernetes (DOKS)  - Setup

- cert-manager: Handles TLS certifcates for HTTPS
- ingress-nginx: Handles ingress controller logic for cluster

## Setup / Tear down - (Cluster + Registry)
```bash
#!/bin/sh
# Setup
source .env
./scripts/cluster/create.sh
./scripts/registry/create.sh
```

```bash
#!/bin/sh
# Tear down
source .env
./scripts/cluster/destroy.sh
./scripts/registry/destroy.sh
```




# Authenticate
```bash
doctl auth --access-token $DIGITALOCEAN_ACCESS_TOKEN
```


# Cluster management
### Create cluster 
```bash
#!/bin/sh
# Set variables 
export CLUSTER_NAME=<cluster name>
export DROPLET_SIZE=<droplet size>
export DROPLET_COUNT=<droplet count>
export REGION=<region slug>
export PACKAGES=ingress-nginx,cert-manager

# Create cluster
doctl kubernetes clusters create \
    $CLUSTER_NAME \
    --region $REGION \
    --size $DROPLET_SIZE \
    --count $DROPLET_COUNT \
    --1-clicks $PACKAGES
```

### Delete cluster
```bash
#!/bin/sh
# To delete load balancers use '--dangerous' flag
dotcl kubernetes clusters delete \
    $CLUSTER_NAME
    --dangerous
```

# Registry management
### Create registry
```bash
#!/bin/sh
# Set variables
export REGISTRY_NAME=<registry name>
export REGION=<region slug>

# Create registry
doctl registry create \
    $REGISTRY_NAME \
    --region $REGION
```

### Log in
```bash
#!/bin/sh
doctl registry login
```

### Delete registry
```bash
#!/bin/sh
doctl registry delete \
    $REGISTRY_NAME \
```

