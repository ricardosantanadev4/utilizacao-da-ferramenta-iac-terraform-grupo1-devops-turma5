terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "estado" {
  filename = "estado.txt"
  content  = "Exemplo de gerenciamento de estado com Terraform."
}