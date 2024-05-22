variable "image" {
  description = "Docker image to use for the container"
  type        = string
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
}

variable "environment" {
  description = "Environment variables to set in the container"
  type        = map(string)
  default     = {}
}

variable "ports" {
  description = "Ports to expose in the container"
  type        = list(object({
    internal = number
    external = number
  }))
  default = []
}
