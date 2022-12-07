#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------
variable "region" {
  description = "The AWS region."
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version to use for EKS Cluster"
  default     = "1.23"
}

variable "namespace" {
  type        = string
  description = "Kubernetes Namespace to deploy HashiCorp Vault in"
  default     = "vault"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}
