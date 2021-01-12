#!/usr/bin/env bash

current=$PWD

kubectl create namespace argocd
kubectl config set-context --current --namespace=argocd

cd $HOME/go/src/github.com/argoproj/argo-cd
kubectl apply -n argocd --force -f manifests/install.yaml

cd $current
