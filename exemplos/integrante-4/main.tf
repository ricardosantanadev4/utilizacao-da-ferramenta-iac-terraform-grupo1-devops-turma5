terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "configuracao" {
  filename = "config.txt"
  content  = "Configuração da aplicação."
}

resource "local_file" "documentacao" {
  filename = "README.txt"
  content  = "Documentação do projeto."
}