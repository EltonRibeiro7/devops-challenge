
terraform {
  backend "s3" {
    profile = "ELTON"
    region = "us-east-1"
    encrypt = true
    bucket = "el7-tw-challenge-iac"
    key = "k8s-cluster/terraform.tfstate"
  }
}

module "k8s-cluster" {
    source = "../modules/k8s-cluster"
    k8s_name = "k8s-cluster"
    setup_region = "nyc1"
    k8s_version = "1.14.7-do.0"
    k8s_worker_pool_name = "pool01"
    k8s_worker_size = "s-1vcpu-2gb"
    lb_name = "k8s-lb"
    k8s_worker_count = "1"
    do_token = "${var.do_token}"
    
}