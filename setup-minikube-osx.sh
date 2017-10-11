#!/bin/bash

brew install docker-machine-driver-xhyve
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

brew install kubectl

brew cask install minikube

brew cask install virtualbox virtualbox-extension-pack

# minikube documentation https://github.com/kubernetes/minikube
