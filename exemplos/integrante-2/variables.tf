variable "nome_arquivo" {
  description = "Nome do arquivo que será criado"
  type        = string
  default     = "terraform.txt"
}

variable "conteudo" {
  description = "Conteúdo do arquivo"
  type        = string
  default     = "Arquivo criado utilizando Terraform!"
}