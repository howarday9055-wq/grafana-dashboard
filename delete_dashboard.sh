#!/bin/bash

configmaps=$(kubectl get configmaps -n monitoring | grep grafana-dashboard)
if [[ ${#@} -ne 1 ]];then
    echo "Usage: bash $0 configmap_name"
    echo -e "Choices: \n$configmaps"
    exit 1
fi
cm_name=$1
namespace=monitoring

kubectl delete configmap ${cm_name} -n $namespace
