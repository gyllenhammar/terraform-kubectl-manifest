terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~>1.13.0"
    }
  }
}

provider "kubectl" {
  apply_retry_count = 3
  config_path       = var.kubeconfig_path
}

data "kubectl_file_documents" "docs" {
  content = file(var.manifest_file_path)
}

resource "kubectl_manifest" "sentence-resource" {
  for_each  = data.kubectl_file_documents.docs.manifests
  yaml_body = each.value
}
