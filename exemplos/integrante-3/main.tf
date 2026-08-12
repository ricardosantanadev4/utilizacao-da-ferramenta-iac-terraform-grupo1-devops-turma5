terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "exemplo" {
  filename = "terraform.txt"
  content  = "Exemplo utilizando outputs."
}