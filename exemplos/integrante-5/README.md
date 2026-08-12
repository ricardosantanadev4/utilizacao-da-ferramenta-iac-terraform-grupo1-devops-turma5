# Integrante 5 — Alterando a infraestrutura com Terraform

Este exemplo demonstra como o Terraform identifica alterações entre o estado atual de um recurso e o estado desejado definido no código.

## Objetivo

Criar inicialmente um arquivo local com o conteúdo "Versão 1", alterar a configuração para "Versão 2" e utilizar o comando `terraform plan` para visualizar a mudança antes de aplicá-la.

## Passo 1 — Inicializar

Entre na pasta do exemplo e execute `terraform init`.

## Passo 2 — Validar

Execute `terraform validate`.

## Passo 3 — Visualizar o plano inicial

Execute `terraform plan`.

Nesse momento, o Terraform mostrará que pretende criar um novo recurso.

## Passo 4 — Aplicar o primeiro estado

Execute `terraform apply` e confirme digitando `yes`.

Será criado o arquivo `terraform.txt` com o conteúdo "Versão 1".

## Passo 5 — Alterar o estado desejado

No arquivo `main.tf`, altere:

content = "Versão 1"

para:

content = "Versão 2"

## Passo 6 — Identificar a diferença

Execute novamente `terraform plan`.

O Terraform compara o estado atual conhecido com o estado desejado definido no código e mostra o que precisa ser alterado.

Fluxo da demonstração:

Estado atual
→ Alteração no código
→ terraform plan
→ Terraform identifica a diferença
→ terraform apply
→ Novo estado

## Passo 7 — Aplicar a alteração

Execute `terraform apply` e confirme com `yes`.

Depois da aplicação, o arquivo `terraform.txt` passará a conter "Versão 2".

## Conceitos demonstrados

- Infraestrutura como Código (IaC)
- Estado atual e estado desejado
- `terraform plan`
- `terraform apply`
- Gerenciamento de alterações em recursos existentes

## Limpeza do ambiente

Ao final, execute `terraform destroy` e confirme com `yes` para remover o recurso criado.
