variable "instance_type" {
    type = map(string)
    description = "This is a map of the instance types"
    default = {
    Jenkins = "t2.large",
    Monitoring = "t2.medium",
    K8s_master = "t2.medium",
    K8s_worker = "t2.medium"

  }
}