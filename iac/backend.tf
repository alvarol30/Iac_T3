resource "docker_image" "node" {
  name = "node:20-alpine"
}
resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = docker_image.node.image_id

  ports {
    internal = 3000
    external = var.api_server_port[terraform.workspace]
  }
}