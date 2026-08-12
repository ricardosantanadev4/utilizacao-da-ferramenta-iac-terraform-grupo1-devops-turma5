# Terraform — Guia Prático

## 1. Introdução

Este repositório apresenta um guia prático para utilização do **Terraform**, ferramenta de **Infraestrutura como Código (IaC)** utilizada para provisionar e gerenciar recursos de infraestrutura por meio de arquivos de configuração.

O objetivo deste guia é apresentar, de forma prática, desde a instalação do Terraform até a criação, validação, planejamento, aplicação e destruição de recursos.

> **Grupo 1 — Terraform**

---

## 2. Pré-requisitos

Antes de utilizar o Terraform, é necessário possuir:

* Sistema operacional compatível;
* Terraform instalado;
* Terminal ou prompt de comando;
* Editor de código, como Visual Studio Code;
* Git para versionamento dos arquivos;
* Conhecimentos básicos de linha de comando.

Para exemplos que utilizem provedores de nuvem, também poderá ser necessário possuir uma conta e as respectivas credenciais configuradas.

---
## 2.1 Sistemas operacionais compatíveis com o Terraform

Antes de instalar o Terraform, você precisa verificar se o seu **sistema operacional e a arquitetura do processador** são compatíveis.

Segundo a documentação oficial atual da HashiCorp, o Terraform possui builds para os seguintes sistemas: [HashiCorp Developer](https://developer.hashicorp.com/terraform/install)

| Sistema operacional | Compatibilidade                                                  |
| ------------------- | ---------------------------------------------------------------- |
| **Windows**         | ✅ Suportado                                                      |
| **macOS**           | ✅ Suportado                                                      |
| **Linux**           | ✅ Suportado                                                      |
| **FreeBSD**         | ⚠️ Disponível, mas fora da garantia principal de compatibilidade |
| **OpenBSD**         | ⚠️ Disponível, mas fora da garantia principal                    |
| **Solaris**         | ⚠️ Disponível, mas fora da garantia principal                    |

## Arquitetura do processador também importa

Além do sistema operacional, existe a **arquitetura**:

| Sistema | Arquiteturas comuns                     |
| ------- | --------------------------------------- |
| Windows | `amd64`, `386`, `arm64`                 |
| macOS   | `amd64`, `arm64`                        |
| Linux   | `amd64`, `386`, `arm`, `arm64`, `s390x` |

## 3. Instalação do Terraform

A instalação pode ser realizada seguindo o procedimento correspondente ao sistema operacional utilizado.

Após a instalação, abra um terminal e execute:

```bash
terraform -version
```

Se a instalação estiver correta, o terminal deverá apresentar a versão instalada do Terraform.

Exemplo:

```text
Terraform vX.X.X
```

**Fonte:** [Documentação oficial — Instalação do Terraform](https://developer.hashicorp.com/terraform/install)
---

## 3.1 Configurções adicionais sistema Windows

Este exemplo mostra o passo a passo para sistemas **Windows 64 bits + processador Intel x64**, você deve utilizar a versão **Windows AMD64** do Terraform.

## Baixar o Terraform

Acesse a página oficial da HashiCorp:

[Download oficial do Terraform](https://developer.hashicorp.com/terraform/install?utm_source=chatgpt.com)

Procure por **Windows** e baixe a versão:

```text
Windows
AMD64
```

O arquivo será parecido com:

```text
terraform_1.15.8_windows_amd64.zip
```
---

## Extrair o arquivo ZIP

Depois de baixar:

1. Abra a pasta **Downloads**.
2. Localize o arquivo `.zip`.
3. Clique com o botão direito.
4. Escolha **Extrair Tudo...**
5. Extraia o conteúdo.

Dentro da pasta extraída você encontrará:

```text
terraform.exe
```

Esse é o executável do Terraform.

---

## Criar uma pasta para o Terraform

Recomendo colocar o Terraform em uma pasta própria.

Abra o Explorador de Arquivos e crie:

```text
C:\Terraform
```

Então copie:

```text
terraform.exe
```

para:

```text
C:\Terraform
```

No final, deverá ficar:

```text
C:\Terraform\terraform.exe
```

---

# Adicionar o Terraform ao PATH

Essa é a parte mais importante da instalação.

O **PATH** permite executar:

```terminal
terraform
```

de qualquer pasta do computador, sem precisar informar:

```terminal
C:\Terraform\terraform.exe
```

### Abra as configurações de variáveis de ambiente

No menu Iniciar do Windows, pesquise:

```text
variáveis de ambiente
```

Selecione:

**Editar as variáveis de ambiente do sistema**

Na janela que abrir, clique em:

**Variáveis de Ambiente...**

---

## Editar o Path

Na parte de **Variáveis de usuário**, procure:

```text
Path
```

Selecione e clique em:

**Editar**

Depois:

**Novo**

Adicione:

```text
C:\Terraform
```

Clique em:

**OK**

Depois novamente em:

**OK**

e:

**OK**

---

# Abrir um novo Terminal

⚠️ Se você já tinha o terminal aberto, **feche-o e abra novamente**.

Isso é necessário para que ele carregue o novo PATH.

Abra o **Terminal**.

Digite:

```terminal
terraform version
```

Se estiver tudo correto, aparecerá algo semelhante a:

```text
Terraform v1.15.8
on windows_amd64
```

## 4. Criando o primeiro projeto

Crie uma pasta para o projeto:

```bash
mkdir terraform-exemplo
```

Entre no diretório:

```bash
cd terraform-exemplo
```

Crie um arquivo chamado:

```text
main.tf
```

A extensão `.tf` identifica os arquivos de configuração utilizados pelo Terraform.

A estrutura inicial pode ser:

```text
terraform-exemplo/
└── main.tf
```

---

## 5. Primeiro exemplo com Terraform

Para realizar um primeiro exemplo simples, podemos utilizar o provider `local`.

O exemplo abaixo cria um arquivo de texto utilizando o Terraform.

### `main.tf`

```hcl
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
```

### Entendendo o código

O bloco `terraform` define informações necessárias para o funcionamento do projeto, incluindo os providers utilizados.

```hcl
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}
```

O **provider** é responsável por permitir que o Terraform interaja com determinado serviço ou tecnologia.

```hcl
provider "local" {}
```

O bloco `resource` define um recurso que será gerenciado pelo Terraform.

```hcl
resource "local_file" "exemplo" {
```

Neste exemplo, o recurso é um arquivo local.

```hcl
filename = "exemplo.txt"
content  = "Meu primeiro recurso criado com Terraform!"
```

Essas propriedades definem o nome e o conteúdo do arquivo que será criado.

---

# 6. Inicializando o projeto

Depois de criar o arquivo `main.tf`, execute:

```bash
terraform init
```

O comando `terraform init` inicializa o diretório de trabalho do Terraform.

Durante esse processo, o Terraform identifica os providers necessários e realiza a preparação do projeto.

Depois da execução, novos arquivos e diretórios relacionados ao funcionamento do Terraform poderão aparecer no projeto.

---

# 7. Validando a configuração

Para verificar se os arquivos de configuração estão sintaticamente corretos, utilize:

```bash
terraform validate
```

Se a configuração estiver correta, o Terraform informará que ela é válida.

Esse comando é útil antes de executar o planejamento ou aplicar alterações.

---

# 8. Formatando o código

O Terraform possui um comando próprio para padronizar a formatação dos arquivos:

```bash
terraform fmt
```

Esse comando reorganiza a formatação dos arquivos `.tf` de acordo com o padrão utilizado pelo Terraform.

É recomendado executar o comando antes de realizar um commit:

```bash
terraform fmt
```

---

# 9. Visualizando o plano de execução

Antes de aplicar qualquer alteração, é possível visualizar o que o Terraform pretende realizar utilizando:

```bash
terraform plan
```

O `terraform plan` apresenta as alterações que serão realizadas sem aplicá-las.

Esse processo permite analisar o planejamento antes da modificação da infraestrutura.

O Terraform trabalha comparando o estado atual com o estado desejado definido nos arquivos de configuração.

---

# 10. Aplicando a configuração

Depois de analisar o plano, utilize:

```bash
terraform apply
```

O Terraform apresentará as alterações que serão realizadas e solicitará confirmação.

Para confirmar a execução, digite:

```text
yes
```

Após a confirmação, o Terraform realizará as alterações necessárias para alcançar o estado definido no código.

No exemplo deste guia, será criado:

```text
exemplo.txt
```

com o conteúdo:

```text
Meu primeiro recurso criado com Terraform!
```

---

# 11. Visualizando o estado

O Terraform mantém informações sobre os recursos que estão sendo gerenciados.

Por padrão, essas informações são armazenadas no arquivo:

```text
terraform.tfstate
```

Esse arquivo relaciona os recursos reais gerenciados pelo Terraform com a configuração definida no código.

Para visualizar informações sobre o estado atual, utilize:

```bash
terraform show
```

O arquivo de estado é uma parte importante do funcionamento do Terraform e deve ser tratado com cuidado, principalmente quando o projeto é armazenado em um repositório Git.

### Listando os recursos do estado

Também é possível listar os recursos atualmente registrados no estado utilizando:

```bash
terraform state list
```

---

# 12. Outputs

Os `outputs` permitem apresentar informações produzidas pelo Terraform.

Por exemplo, podemos criar:

```text
outputs.tf
```

com:

```hcl
output "nome_arquivo" {
  value = local_file.exemplo.filename
}
```

Depois de aplicar a configuração:

```bash
terraform apply
```

podemos consultar o output com:

```bash
terraform output
```

Ou consultar um output específico:

```bash
terraform output nome_arquivo
```

---

# 13. Variáveis

As variáveis permitem evitar valores fixos diretamente no código.

Crie um arquivo:

```text
variables.tf
```

Exemplo:

```hcl
variable "nome_arquivo" {
  description = "Nome do arquivo que será criado"
  type        = string
  default     = "exemplo.txt"
}
```

No `main.tf`, podemos utilizar a variável:

```hcl
resource "local_file" "exemplo" {
  filename = var.nome_arquivo
  content  = "Meu primeiro recurso criado com Terraform!"
}
```

A referência:

```hcl
var.nome_arquivo
```

utiliza o valor definido na variável.

---

# 14. Estrutura utilizando variáveis e outputs

Um projeto Terraform pode ser organizado da seguinte maneira:

```text
terraform-exemplo/
├── main.tf
├── variables.tf
├── outputs.tf
└── terraform.tfstate
```

### `main.tf`

Responsável principalmente pela definição dos recursos.

### `variables.tf`

Responsável pela definição das variáveis utilizadas no projeto.

### `outputs.tf`

Responsável pelas informações que serão apresentadas como saída.

### `terraform.tfstate`

Arquivo utilizado pelo Terraform para armazenar informações relacionadas ao estado da infraestrutura.

---

# 15. Destruindo os recursos

Quando não for mais necessário manter os recursos criados pelo Terraform, utilize:

```bash
terraform destroy
```

O Terraform apresentará os recursos que serão removidos e solicitará confirmação.

Digite:

```text
yes
```

para confirmar.

No exemplo deste guia, o arquivo criado pelo Terraform será removido.

> **Atenção:** `terraform destroy` deve ser utilizado com cuidado, principalmente em ambientes reais, pois ele pode remover recursos gerenciados pelo Terraform.

---

# 16. Ciclo básico de utilização

O fluxo básico de trabalho pode ser representado da seguinte maneira:

```text
Criar arquivos .tf
       ↓
terraform init
       ↓
terraform fmt
       ↓
terraform validate
       ↓
terraform plan
       ↓
terraform apply
       ↓
Infraestrutura / recursos
       ↓
terraform show
       ↓
terraform state list
       ↓
terraform destroy
```

---

# 17. Principais comandos

| Comando              | Função                                      |
| -------------------- | ------------------------------------------- |
| `terraform init`     | Inicializa o projeto e prepara os providers |
| `terraform fmt`      | Formata os arquivos Terraform               |
| `terraform validate` | Valida a configuração                       |
| `terraform plan`     | Mostra as alterações planejadas             |
| `terraform apply`    | Aplica as alterações                        |
| `terraform show`     | Exibe informações sobre o estado            |
| `terraform state list` | Lista os recursos registrados no estado |
| `terraform output`   | Exibe os outputs                            |
| `terraform destroy`  | Remove os recursos gerenciados              |

---

# 18. Providers

Providers são componentes que permitem ao Terraform interagir com diferentes serviços e tecnologias.

Eles podem permitir o gerenciamento de recursos em diferentes provedores de infraestrutura, como:

* AWS;
* Microsoft Azure;
* Google Cloud;
* VMware;
* entre outros.

No exemplo deste guia utilizamos:

```hcl
required_providers {
  local = {
    source = "hashicorp/local"
  }
}
```

O provider define a tecnologia que será utilizada para criar e gerenciar os recursos.

---

# 19. Resources

Os `resources` representam os elementos que serão criados ou gerenciados pelo Terraform.

Exemplo:

```hcl
resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = "Meu primeiro recurso criado com Terraform!"
}
```

A estrutura básica é:

```hcl
resource "TIPO" "NOME" {
  configuração
}
```

No exemplo:

```text
Tipo: local_file
Nome: exemplo
```

---

# 20. Modelo declarativo

O Terraform utiliza uma abordagem declarativa.

Em vez de informar detalhadamente cada comando necessário para criar uma infraestrutura, o usuário define **qual estado deseja alcançar**.

Por exemplo:

```hcl
resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = "Meu primeiro recurso criado com Terraform!"
}
```

O código descreve o recurso desejado e o Terraform determina as ações necessárias para alcançar esse estado.

---

# 21. Terraform e Infraestrutura como Código

A Infraestrutura como Código (IaC) permite gerenciar infraestrutura por meio de arquivos de definição.

Entre os benefícios apresentados no conteúdo da aula estão:

* **Versionamento:** o código pode ser armazenado em sistemas como Git;
* **Velocidade:** ambientes podem ser provisionados de maneira automatizada;
* **Documentação:** o próprio código representa a infraestrutura;
* **Escalabilidade:** permite gerenciar múltiplos recursos de forma consistente.

---

# 22. Terraform no mercado

O Terraform é utilizado principalmente para **provisionamento e gerenciamento de infraestrutura**.

Entre os usos estão:

* Criação de recursos em nuvem;
* Provisionamento de máquinas virtuais;
* Configuração de redes;
* Gerenciamento de recursos de infraestrutura;
* Automação de ambientes;
* Criação de ambientes reproduzíveis;
* Integração com processos de CI/CD.

No contexto de infraestrutura moderna, o Terraform pode ser utilizado para definir a infraestrutura como código e manter sua configuração versionada.

---

# 23. Terraform x ferramentas de configuração

O Terraform possui foco principalmente no **provisionamento da infraestrutura**.

| Característica | Terraform                   | Ansible                          |
| -------------- | --------------------------- | -------------------------------- |
| Foco           | Provisionamento             | Configuração e automação         |
| Linguagem      | HCL                         | YAML                             |
| Modelo         | Declarativo                 | Híbrido                          |
| Agente         | Não                         | Não                              |
| Exemplo        | Criar VMs, redes e recursos | Instalar e configurar aplicações |

Conforme o conteúdo apresentado em aula, o Terraform atua principalmente na criação da infraestrutura, enquanto ferramentas como Ansible são utilizadas para configurar o software dentro dessa infraestrutura.

---

# 24. Exemplos dos integrantes

Cada integrante do grupo desenvolveu um exemplo prático, disponível na pasta `exemplos/`:

| Pasta | Tema |
| --- | --- |
| `exemplos/primeiro-recurso-criado-com-terraform-integrante-1-ricardo/` | Primeiro recurso (provider + resource) |
| `exemplos/integrante-2/` | Variáveis |
| `exemplos/part_6/` | Estado (terraform.tfstate) |
| `exemplos/integrante-4/` | Múltiplos recursos |
| `exemplos/integrante-7/` | Projeto completo (variáveis + recurso + outputs + ciclo) |

---

# 25. Divisão de tarefas

| Integrante | Responsabilidade |
| --- | --- |
| Ricardo | Instalação, primeiro recurso, `terraform init` |
| Lucas | Variáveis |
| _(a definir)_ | Outputs |
| Emanuel | Múltiplos recursos |
| _(a definir)_ | Alterando a infraestrutura (plan/apply de mudança) |
| _(a definir)_ | Estado (`terraform.tfstate`) |
| Gabriela | Projeto completo (variáveis + recurso + outputs + ciclo completo) |

---

# 26. Referências

* Documentação oficial do Terraform - https://developer.hashicorp.com/terraform
* Instalação do Terraform - https://developer.hashicorp.com/terraform/install
* Documentação do provider local - https://registry.terraform.io/providers/hashicorp/local/latest/docs
* Material da disciplina sobre Gerencia de Configuração e Automação
* Documentação oficial relacionada a infraestrutura como Código (IaC)

---

# 27. `.gitignore`

Arquivos relacionados ao funcionamento local do Terraform não devem ser adicionados indiscriminadamente ao Git.

O `.gitignore` utilizado neste projeto é:

```gitignore
.terraform/
*.tfstate
*.tfstate.backup
.terraform.lock.hcl
crash.log
terraform.txt
```

> O `.gitignore` deve ser analisado de acordo com a estratégia de versionamento adotada pelo projeto. Em projetos reais, o arquivo `.terraform.lock.hcl` normalmente pode ser versionado para registrar as versões dos providers utilizadas — neste projeto optamos por ignorá-lo, já que cada integrante gera o seu localmente.

---

# 28. Conclusão

O Terraform permite definir e gerenciar infraestrutura utilizando código, possibilitando maior automação, padronização, repetibilidade e controle das alterações.

Seu fluxo básico envolve definir os recursos desejados, inicializar o projeto, validar a configuração, visualizar o plano de execução, aplicar as alterações e, quando necessário, destruir os recursos.

O objetivo deste guia foi apresentar esse fluxo de forma prática, permitindo que novos usuários possam criar seu primeiro projeto e compreender os principais comandos utilizados no Terraform.
