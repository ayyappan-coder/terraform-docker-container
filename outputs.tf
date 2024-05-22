output "container_id" {
  description = "The ID of the Docker container"
  value       = docker_container.container.id
}

output "container_name" {
  description = "The name of the Docker container"
  value       = docker_container.container.name
}
