#!/usr/bin/env bash

curl -O https://raw.githubusercontent.com/elastic/Helm-charts/master/elasticsearch/examples/minikube/values.yaml

kubectl apply -f ./logging-namespace.yaml
helm repo add elastic https://helm.elastic.co/
helm install elasticsearch elastic/elasticsearch -f ./values.yaml --namespace logging
helm install kibana elastic/kibana --namespace logging
