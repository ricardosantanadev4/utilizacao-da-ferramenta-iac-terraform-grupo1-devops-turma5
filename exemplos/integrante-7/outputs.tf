output "arquivo_criado" {
  description = "Caminho do arquivo criado"
  value       = local_file.projeto.filename
}

output "id_recurso" {
  description = "ID do recurso"
  value       = local_file.projeto.id
}