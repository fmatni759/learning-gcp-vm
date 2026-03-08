variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "learning-gcp-489415"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "northamerica-northeast1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "northamerica-northeast1-a"
}

variable "environment" {
  description = "Environment: dev, staging, prod"
  type        = string
  default     = "dev"
}

variable "vm_name" {
  description = "Nom de la VM"
  type        = string
  default     = "vm-exercise"
}