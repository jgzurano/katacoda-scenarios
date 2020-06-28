#!/bin/sh

source <(helm completion bash)
source <(minikube completion bash)
source <(kubectl completion bash)

minikube addons enable metrics-server
clear
