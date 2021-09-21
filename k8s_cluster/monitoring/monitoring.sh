#!/usr/bin/env bash

kubectl apply -f ./monitoring-namespace.yaml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring
