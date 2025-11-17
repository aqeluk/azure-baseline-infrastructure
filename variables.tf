variable "env" {
  description = "Environment name (e.g. dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "workload" {
  description = "Workload or project name"
  type        = string
  default     = "base"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "location_suffix" {
  description = "Short suffix for region to use in names"
  type        = string
  default     = "uks"
}
