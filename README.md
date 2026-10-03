# IaC_S3


## Herramientas utilizadas

- Terraform
- Docker
- GitHub
- Visual Studio Code

## Ambientes

Se utilizaron workspaces de Terraform para separar los ambientes.

### Desarrollo

- Web: puerto 4001
- API: puerto 4002
- Base de datos: puerto 4003

### QA

- Web: puerto 5001
- API: puerto 5002
- Base de datos: puerto 5003

## Estructura del proyecto

```text
iac/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── web-server.tf
├── backend.tf
├── database.tf
