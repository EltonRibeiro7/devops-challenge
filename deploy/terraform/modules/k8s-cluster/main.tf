
provider "digitalocean" {
    token = "${var.do_token}"
    version = "1.9"
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = "${var.k8s_name}"
  region  = "${var.setup_region}"
  version = "${var.k8s_version}"

  node_pool {
    name       = "${var.k8s_worker_pool_name}"
    size       = "${var.k8s_worker_size}"
    node_count = "${var.k8s_worker_count}"
  }
}
