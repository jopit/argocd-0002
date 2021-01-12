#!/bin/sh

sed -i~ -e "s/argocd-0000/${PWD##*/}/g" manifests/*.yaml application.yaml
rm -fr .git
