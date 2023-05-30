
provider "azurerm" {
  partner_id = "ca4078f8-9bc4-471b-ab5b-3af6b86a42c8"
  # partner identifier for CAF Terraform landing zones.
  features {
  }
}

provider "kubernetes" {
  host                   = local.k8sconfigs[var.aks_cluster_key].host
  username               = local.k8sconfigs[var.aks_cluster_key].username
  password               = local.k8sconfigs[var.aks_cluster_key].password
  client_certificate     = local.k8sconfigs[var.aks_cluster_key].client_certificate
  client_key             = local.k8sconfigs[var.aks_cluster_key].client_key
  cluster_ca_certificate = local.k8sconfigs[var.aks_cluster_key].cluster_ca_certificate
}

provider "kustomization" {
  kubeconfig_raw = local.k8sconfigs[var.aks_cluster_key].kube_admin_config_raw
}

locals {
  k8sconfigs = {
    for key, value in var.aks_clusters : key => {
      kube_admin_config_raw  = data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config_raw
      host                   = local.remote.aks_clusters[value.lz_key][value.key].enable_rbac ? data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config.0.host : data.azurerm_kubernetes_cluster.kubeconfig[key].kube_config.0.host
      username               = local.remote.aks_clusters[value.lz_key][value.key].enable_rbac ? data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config.0.username : data.azurerm_kubernetes_cluster.kubeconfig[key].kube_config.0.username
      password               = local.remote.aks_clusters[value.lz_key][value.key].enable_rbac ? data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config.0.password : data.azurerm_kubernetes_cluster.kubeconfig[key].kube_config.0.password
      client_certificate     = local.remote.aks_clusters[value.lz_key][value.key].enable_rbac ? base64decode(data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config.0.client_certificate) : base64decode(data.azurerm_kubernetes_cluster.kubeconfig[key].kube_config.0.client_certificate)
      client_key             = local.remote.aks_clusters[value.lz_key][value.key].enable_rbac ? base64decode(data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config.0.client_key) : base64decode(data.azurerm_kubernetes_cluster.kubeconfig[key].kube_config.0.client_key)
      cluster_ca_certificate = local.remote.aks_clusters[value.lz_key][value.key].enable_rbac ? base64decode(data.azurerm_kubernetes_cluster.kubeconfig[key].kube_admin_config.0.cluster_ca_certificate) : base64decode(data.azurerm_kubernetes_cluster.kubeconfig[key].kube_config.0.cluster_ca_certificate)
    }
  }
}

# Get kubeconfig from AKS clusters
data "azurerm_kubernetes_cluster" "kubeconfig" {
  for_each = var.aks_clusters

  name                = local.remote.aks_clusters[each.value.lz_key][each.value.key].cluster_name
  resource_group_name = local.remote.aks_clusters[each.value.lz_key][each.value.key].resource_group_name
}