variable "region" {
  default = "us-east-1"
  description = "Region used to create resources"
  type    = string
}

variable "role_name" {
  default     = "Production"
  description = "Name for the IAM Role Antimetal will use to connect to your AWS account"
  type        = string
  sensitive   = false
}

variable "antimetal_principal" {
  default     = "042894766506"
  description = "Antimetal IAM Principal used to access your AWS account"
  type        = string
  sensitive   = false
}

variable "external_id" {
  default     = null
  description = "External ID generated by Antimetal to provide secure access to your AWS account"
  type        = string
  sensitive   = true
}

variable "handshake_id" {
  default     = null
  description = "Unique Antimetal handshake identitifer"
  type        = string
  sensitive   = true
}
