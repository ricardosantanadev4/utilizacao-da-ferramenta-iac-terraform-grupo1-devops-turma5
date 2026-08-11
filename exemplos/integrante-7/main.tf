terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "projeto" {
  filename = var.nome_arquivo
  content  = var.conteudo
}