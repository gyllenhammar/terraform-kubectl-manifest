variable "kubeconfig_path" {
  description = "File path of kubeconfig file."
  type        = string
}

variable "manifest_file_path" {
  description = "File path of kubernetes manifest yaml file."
  type        = string
  default     = ""
}

variable "manifest_content" {
  description = "Content of manifest file."
  type        = string
  default     = ""
}
