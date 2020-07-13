#!/bin/sh

source <(helm completion bash)
source <(minikube completion bash)
source <(kubectl completion bash)

rm -f /usr/bin/helm
snap install helm --classic
ln -s /snap/bin/helm /usr/bin/

clear
