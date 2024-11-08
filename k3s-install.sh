#!/bin/bash

K3S_VERSION="v1.26.1+k3s1"
echo "Installing k3s..."
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=$K3S_VERSION sh -

# Check if k3s is running
k3s kubectl get nodes
if [ $? -ne 0 ]; then
    echo "Failed to install k3s." >&2
    exit 1
else
    echo "k3s successfully installed."
fi
