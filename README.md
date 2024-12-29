# FundMe

**FundMe** é um contrato inteligente simples desenvolvido com **Solidity** e testado usando o framework **Foundry**. O contrato permite que usuários enviem fundos para um contrato e, posteriormente, o proprietário do contrato pode retirar os fundos arrecadados. 

Este projeto foi criado para fins educacionais e serve como um exemplo prático de um contrato de arrecadação de fundos.

## Funcionalidades

- **Fundar o contrato**: Os usuários podem enviar Ethereum para o contrato usando a função `fund()`.
- **Retirar fundos**: Somente o proprietário do contrato pode retirar os fundos acumulados usando a função `withdraw()`.
- **Testes**: Os testes garantem que a função de enviar e retirar fundos funciona corretamente.

## Pré-requisitos

Antes de começar, você precisará ter as seguintes ferramentas instaladas no seu sistema:

- [Node.js](https://nodejs.org/) - Para o gerenciamento de dependências e execução de scripts.
- [Foundry](https://getfoundry.sh/) - Para compilar, testar e interagir com contratos Solidity.

## Como Configurar o Projeto

### 1. Clone o repositório

Clone o repositório para a sua máquina local:

```bash
git clone https://github.com/seu-usuario/fund-me.git
cd fund-me