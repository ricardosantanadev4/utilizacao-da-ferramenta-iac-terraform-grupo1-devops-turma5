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
