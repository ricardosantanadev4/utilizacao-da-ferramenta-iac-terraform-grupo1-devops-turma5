output "nome_arquivo" {
  description = "Nome do arquivo criado"
  value       = local_file.exemplo.filename
}

output "id_arquivo" {
  description = "ID do recurso criado"
  value       = local_file.exemplo.id
}