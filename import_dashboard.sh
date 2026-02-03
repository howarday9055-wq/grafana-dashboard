#!/bin/bash

if [[ ${#@} -ne 2 ]];then
    echo "Usage: bash $0 configmap_name file_name"
    exit 1
fi
cm_name=$1
file_name=$2
namespace=monitoring

kubectl create configmap ${cm_name} --from-file=${file_name} -n $namespace
kubectl label configmap ${cm_name} -n $namespace grafana_dashboard=1
