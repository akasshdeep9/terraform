#__________________________________________________________
#
# Get Outputs from the kube Workspace
#__________________________________________________________

data "terraform_remote_state" "kube" {
  backend = "remote"
  config = {
    organization = var.tfc_organization
    workspaces = {
      name = var.ws_kube
    }
  }
}

locals {
  # IKS Cluster Name
  cluster_name = data.terraform_remote_state.kube.outputs.cluster_name
  # Kubernetes Configuration File
  kube_config = yamldecode(data.terraform_remote_state.kube.outputs.kube_config)
}

#______________________________________________________________________
#
# Deploy the Intersight Workload Optimizer Pod using the Helm Provider
#______________________________________________________________________

resource "helm_release" "iwo_k8s_collector" {
  name      = "iwok8scollector"
  namespace = "default"
  #  namespace = "iwo-collector"
  chart = "https://prathjan.github.io/helm-chart/iwok8scollector-0.6.2.tgz"
  set {
    name  = "iwoServerVersion"
    value = "8.0"
  }
  set {
    name  = "collectorImage.tag"
    value = "8.0.6"
  }
  set {
    name  = "targetName"
    value = "${local.cluster_name}_sample"
  }
}
