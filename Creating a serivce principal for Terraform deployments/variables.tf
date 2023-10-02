variable "client_id" {
  type    = string
  default = null
}

variable "client_secret" {
  type      = string
  default   = null
  sensitive = true
}

variable "tenant_id" {
  type    = string
  default = null
}

variable "subscription_id" {
  type    = string
  default = null
}
