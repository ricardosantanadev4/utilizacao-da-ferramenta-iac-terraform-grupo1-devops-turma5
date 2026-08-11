variable "nome_arquivo" {
  description = "Nome do arquivo"
  type        = string
  default     = "projeto-terraform.txt"
}

variable "conteudo" {
  description = "Conteúdo do arquivo"
  type        = string
  default     = "Projeto completo utilizando Terraform."
}