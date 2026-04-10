#!/bin/bash

if [[ ${#@} -ne 1 ]];then
    echo "Usage: bash $0 configmap_name"
    exit 1
fi
cm_name=$1
namespace=monitoring

kubectl delete configmap ${cm_name} -n $namespace
