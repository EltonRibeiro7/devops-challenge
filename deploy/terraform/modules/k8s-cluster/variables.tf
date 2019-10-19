
variable "k8s_name" {
    type = "string"
    default = ""
    description = "K8S Cluster Name"
}

variable "setup_region" {
    type = "string"
    default = ""
    description = "Setup Region"
}

variable "k8s_version" {
    type = "string"
    default = ""
    description = "K8S Cluster Version"
}

variable "k8s_worker_pool_name" {
    type = "string"
    default = ""
    description = "K8S Cluster Worker Pool Name"
}

variable "do_token" {
    type = "string"
    default = ""
    description = "DigitalOcean Token"
}

variable "k8s_worker_size" {
    type = "string"
    default = ""
    description = "K8S Cluster Worker DropLet Size"
}

variable "lb_name" {
    type = "string"
    default = ""
    description = "Load Balancer Name"
}


variable "k8s_worker_count" {
    type = "string"
    default = ""
    description = "K8S Cluster Worker DropLet Count"
}

