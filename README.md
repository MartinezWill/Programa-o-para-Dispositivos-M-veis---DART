# ✈️ Sistema de Gestão de Passagens — POO em Dart

Repositório desenvolvido como atividade prática para consolidar os principais conceitos de **Programação Orientada a Objetos (POO)** na linguagem **Dart**.

O projeto apresenta a evolução progressiva da arquitetura de software ao longo de **10 exercícios**, partindo da modelagem básica até recursos avançados de herança, mixins e polimorfismo.

---

## 📌 Sumário dos Exercícios

1. [Exercício 1 — Abstração e Classes de Apoio](#1-exercício-1--abstração-e-classes-de-apoio)
2. [Exercício 2 — Agregação e Construtor Padrão](#2-exercício-2--agregação-e-construtor-não-nomeado)
3. [Exercício 3 — Construtores Nomeados](#3-exercício-3--flexibilização-com-construtores-nomeados)
4. [Exercício 4 — Parâmetros Nomeados e required](#4-exercício-4--parâmetros-nomeados-e-clareza-de-inicialização)
5. [Exercício 5 — Encapsulamento Manual](#5-exercício-5--encapsulamento-manual-de-atributos-críticos)
6. [Exercício 6 — Getters e Setters Nativos](#6-exercício-6--refatoração-para-getters-e-setters-nativos)
7. [Exercício 7 — Métodos e Regras de Negócio](#7-exercício-7--comportamentos-e-métodos-de-negócio)
8. [Exercício 8 — Especialização com Herança](#8-exercício-8--especialização-com-herança)
9. [Exercício 9 — Reutilização com Mixins](#9-exercício-9--reutilização-de-código-com-mixins)
10. [Exercício 10 — Polimorfismo e Execução Geral](#10-exercício-10--sobrescrita-polimórfica-e-execução-geral)

---

## 📖 Detalhamento dos 10 Exercícios

### 1. Exercício 1 — Abstração e Classes de Apoio
Modelagem das entidades de suporte que compõem o sistema:
- `Passageiro`: Informações cadastrais e de contato.
- `PlataformaVenda`: Identificação do canal de emissão.
- `Atendente`: Identificação do colaborador responsável pelo atendimento.

### 2. Exercício 2 — Agregação e Construtor Não Nomeado
Criação da entidade agregadora `Passagem`, relacionando as classes de apoio por meio de agregação e um construtor padrão não parametrizado.

### 3. Exercício 3 — Flexibilização com Construtores Nomeados
Definição de múltiplos construtores nomeados (`.somenteCodigo` e `.completa`), permitindo flexibilidade na instanciação dos objetos.

### 4. Exercício 4 — Parâmetros Nomeados e Clareza de Inicialização
Adoção de chaves `{}` e do modificador `required` para tornar os parâmetros autoexplicativos na instanciação, evitando erros de ordem posicional.

### 5. Exercício 5 — Encapsulamento Manual de Atributos Críticos
Aplicação de visibilidade privada no atributo `_codigoLocalizador` e criação de métodos manuais `getCodigoLocalizador()` e `setCodigoLocalizador()` com validação de dados.

### 6. Exercício 6 — Refatoração para Getters e Setters Nativos
Evolução para a sintaxe idiomática da linguagem Dart utilizando as palavras-chave `get` e `set` com validações de regras de negócio.

### 7. Exercício 7 — Comportamentos e Métodos de Negócio
Implementação de regras de operação do bilhete:
- `emitirPassagem()`: Emissão da passagem no sistema.
- `cancelarPassagem()`: Cancelamento do bilhete emitido.
- `atualizarPassagem()`: Atualização de informações da reserva.
- `consultarPassagem(String codigo)`: Consulta e retorno de uma instância.

### 8. Exercício 8 — Especialização com Herança
Especialização da classe através de `PassagemPrimeiraClasse extends Passagem`, herdando a estrutura da classe pai via construtor `super()` e adicionando atributos específicos (como `loungeAcesso`).

### 9. Exercício 9 — Reutilização de Código com Mixins
Desacoplamento de responsabilidades transversais com os mixins `Logger` e `Auditoria`, agregando funcionalidades sem sobrecarregar a hierarquia de herança.

### 10. Exercício 10 — Sobrescrita Polimórfica e Execução Geral
Uso da anotação `@override` no método `atualizarPassagem()` para aplicar comportamento específico de Primeira Classe junto com as chamadas de auditoria e log, validando toda a execução na função `main()`.

---

## 🛠️ Tecnologias Utilizadas

- **Dart SDK**
- **Conceitos de POO:** Abstração, Encapsulamento, Herança, Polimorfismo e Composição
- **Ambiente de Desenvolvimento:** VS Code / DartPad

---

## 🚀 Como Executar

1. Clone este repositório:
```bash
git clone [https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git](https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git)
