terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = "Meu primeiro recurso criado com Terraform!"
}