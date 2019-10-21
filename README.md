# TW-CHALLENGE

A challenge to create a working pipeline with the following requisites:

-------

## Challenge Details

* Must have:
  * All dependencies need to be resolved by the pipeline.
  * Pipeline must be multi stage with at least build, test and deploy.
  * Should be able to deploy specific versions of the code.
  * Should be able to deploy at any time.

* Should have:
  * Pipeline as a code, commited together with the code.
  * Descriptive pipeline.
  * Provide support for containers or similar technology.
  * Open source app from ToDoMVC or similar.

* Nice to have:
  * Automated tests.
  * Scalable to more servers

-------

## My solution

My solution to this challenge involves a open source front end application written in Vue, details on this [link](https://github.com/gothinkster/vue-realworld-example-app), as well as a pipeline written to work with circleCI. The app is built into a docker container and then deployed to a cloud kubernetes managed cluster running at DigitalOcean.

### Requirements

#### Kubernetes Cloud Managed Cluster (Tested on DigitalOcean Kubernetes)

* Api Metrics Server Installed if you want to use Horizontal Pod Autoscaler.
* Nginx Ingress Controller in order to use ingress, [details](https://github.com/kubernetes/ingress-nginx)
* K8S tested on version 1.14.x

#### Minikube

* Api Metrics Server Installed if you want to use Horizontal Pod Autoscaler.
* Nginx Ingress Controller in order to use ingress, [details](https://github.com/kubernetes/ingress-nginx)
* K8S tested on version 1.14.x

### Deployment using 


-------

