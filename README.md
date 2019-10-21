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
* Host URL on ./deploy/k8s-app/ingress.yml should be changed to a valid external DNS Host Entry. I am using one for test "twchallenge.ddns.net"

**Note:** There is a terraform module as well as an example of how to provide a k8s-cluster with basic settings at DigitalOcean. Use your own token and backend state server as input. The root folder is at ./deploy/terraform.

#### Minikube

* Api Metrics Server Installed if you want to use Horizontal Pod Autoscaler. [details](https://github.com/kubernetes-incubator/metrics-server)
* Nginx Ingress Controller in order to use ingress, [details](https://github.com/kubernetes/ingress-nginx)
* K8S tested on version 1.14.x
* Add twchallenge.ddns.net in hosts of your host and points it the minikube ip address.

### Details

#### Trunk Based Development

I am assuming a TBD development model in order to create a pipeline aligned with it. TDB was chosen because it fits well in a CI/CD flow. The trunk branch will be the master. Developers should merge to master or pull request (only if necessary). Create release branchs only if is absolutely necessary, otherwise release tags will be enough (the pipeline was designed to work it release tags)

#### The Pipeline

The pipeline has four stages with a manual approval step in order to deploy to production. The steps are described below:

Will run whenever someone commits or pull request to master branch:

* Build Stage: will install all requirements and all dependencies
* Test State: will run unit tests of the application and send the result back to the circleCI interface.

Will run only if a tag is pushed to master branch. With this, people can control when the code will be deployed and what version of code will be deployed.

* Image-build Stage: will build an docker image and push it to docker.io repository
* Approval Stage: manual approval required to proceed with production deploy
* Deploy Stage: will deploy after approval, check if it was ok and finish, otherwise will rollback the deployment to a previous version and quit with an error.

-------

**Tip**: If you want to skip the CI, just put the tag in the commit msg [skip ci].
