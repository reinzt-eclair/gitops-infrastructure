terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

# An empty provider block natively instructs Terraform to utilize 
# the internal ServiceAccount token of the Pod it is executing within.
provider "kubernetes" {}

resource "kubernetes_namespace" "gitops_test" {
  metadata {
    name = "gitops-automated-namespace"
  }
}
