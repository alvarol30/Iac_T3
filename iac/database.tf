resource "docker_image" "postgres" {
  name = "postgres:16-alpine"
}
resource "docker_container" "db" {
  name  = "db-${terraform.workspace}"
  image = docker_image.postgres.image_id

  ports {
    internal = 5432
    external = var.db_server_port[terraform.workspace]
  }

  env = [
    "POSTGRES_USER=admin",
    "POSTGRES_PASSWORD=admin123",
    "POSTGRES_DB=appdb"
  ]
}