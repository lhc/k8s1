#!/bin/bash

NAMESPACE="argocd"
kubectl create namespace $NAMESPACE
kubectl apply -n $NAMESPACE -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl wait --for=condition=available --timeout=600s deployment/argocd-server -n $NAMESPACE

kubectl get pods -n $NAMESPACE
if [ $? -ne 0 ]; then
    echo "Failed to install ArgoCD." >&2
    exit 1
else
    echo "ArgoCD successfully installed."
fi

kubectl apply -n $NAMESPACE -f https://raw.githubusercontent.com/argoproj-labs/applicationset/v0.4.1/manifests/install.yaml
kubectl apply -n $NAMESPACE -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -n $NAMESPACE -f https://raw.githubusercontent.com/lhc/k8s1/refs/heads/main/applicationset.yaml
