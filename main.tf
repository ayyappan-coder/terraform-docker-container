resource "docker_container" "container" {
  name  = var.container_name
  image = var.image

  dynamic "env" {
    for_each = var.environment
    content {
      key   = env.key
      value = env.value
    }
  }

  dynamic "ports" {
    for_each = var.ports
    content {
      internal = ports.value.internal
      external = ports.value.external
    }
  }

  must_run = true
}

resource "docker_image" "image" {
  name = var.image
}

