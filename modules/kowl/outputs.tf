output "namespace" {
  description = "Namespace in which the module is deployed."
  value       = kubernetes_deployment.this.metadata.0.namespace
}

output "deployment_name" {
  description = "Name of the deployment created by this module."
  value       = kubernetes_deployment.this.metadata.0.name
}

output "ingress_name" {
  description = "Name of the public ingress."
  value       = kubernetes_ingress.this.*.metadata.0.name
}

output "ingress_internal_name" {
  description = "Name of the internal ingress."
  value       = kubernetes_ingress.this_internal.*.metadata.0.name
}
