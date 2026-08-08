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
