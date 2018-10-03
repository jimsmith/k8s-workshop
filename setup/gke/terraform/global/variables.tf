variable "users" { 
  type = "list"
}

variable "project" {
 default = "us-k8s-wokshop"
}

variable "permissions" {
  type = "list"
default = ["container.namespaces.create", "container.pods.create", "container.pods.getLogs", "container.pods.portForward", "container.pods.delete", "container.resourceQuotas.create", "container.limitRanges.create", "container.resourceQuotas.delete", "container.replicaSets.create", "container.deployments.create", "container.replicaSets.updateScale", "container.deployments.update", "container.replicaSets.delete", "container.replicaSets.update", "container.deployments.delete", "container.persistentVolumeClaims.create", "container.persistentVolumeClaims.delete", "container.configMaps.create", "container.configMaps.update", "container.configMaps.delete", "container.pods.exec", "container.secrets.create", "container.secrets.list", "container.services.create", "container.services.delete", "resourcemanager.projects.get", "container.clusters.get", "container.services.list", "container.pods.list", "container.namespaces.list", "container.pods.get", "container.resourceQuotas.list", "container.resourceQuotas.get", "container.limitRanges.get", "container.limitRanges.delete", "container.replicaSets.get", "container.replicaSets.list", "container.replicaSets.get", "container.replicaSets.list", "container.deployments.list", "container.deployments.get", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.get", "container.persistentVolumes.list", "container.persistentVolumes.get", "container.configMaps.get", "container.services.get", "container.configMaps.list", "container.secrets.get", "container.serviceAccounts.get", "container.roles.get", "container.roleBindings.get"]
}

