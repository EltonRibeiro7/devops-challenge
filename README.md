# TW-CHALLENGE

A challenge to create a working pipeline with the following requisites:

* Must have:
  * All dependencies need to be resolved by the pipeline.
  * Pipeline must be multi stage with at least build, test and deploy.
  * Should be able to deploy specific versions of the code.
  * Should be able to deploy at any moment.

* Should have:
  * Pipeline as a code, commited together with the code.
  * Container or similar technology supported 

* Nice to have:
  * Automated tests.
  * Scale out to more servers



## Requirements

### Kubernetes Cloud Managed Cluster (Tested on DigitalOcean Kubernetes)
- Api Metrics Running  
- Nginx Ingress Controller
    https://github.com/kubernetes/ingress-nginx
- Version 1.14.x

### Minikube
- Api Metrics Running
- Nginx Ingress Controller (minikube addons enable ingress)
