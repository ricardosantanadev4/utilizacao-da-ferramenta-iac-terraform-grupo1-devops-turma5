terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "exemplo" {
  filename = var.nome_arquivo
  content  = var.conteudo
}