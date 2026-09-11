# ✈️ Sistema de Gestão de Passagens — POO em Dart

Repositório desenvolvido como atividade prática para consolidar os principais conceitos de **Programação Orientada a Objetos (POO)** na linguagem **Dart**.

O projeto apresenta a evolução progressiva da arquitetura de software ao longo de **10 exercícios**, partindo da modelagem básica até recursos avançados de herança, mixins e polimorfismo.

---

## 📌 Sumário dos Exercícios

1. [Exercício 1 — Abstração e Classes de Apoio](#1-exercício-1--abstração-e-classes-de-apoio)[cite: 1]
2. [Exercício 2 — Agregação e Construtor Padrão](#2-exercício-2--agregação-e-construtor-não-nomeado)[cite: 1]
3. [Exercício 3 — Construtores Nomeados](#3-exercício-3--flexibilização-com-construtores-nomeados)[cite: 1]
4. [Exercício 4 — Parâmetros Nomeados e required](#4-exercício-4--parâmetros-nomeados-e-clareza-de-inicialização)[cite: 1]
5. [Exercício 5 — Encapsulamento Manual](#5-exercício-5--encapsulamento-manual-de-atributos-críticos)[cite: 1]
6. [Exercício 6 — Getters e Setters Nativos](#6-exercício-6--refatoração-para-getters-e-setters-nativos)[cite: 1]
7. [Exercício 7 — Métodos e Regras de Negócio](#7-exercício-7--comportamentos-e-métodos-de-negócio)[cite: 1]
8. [Exercício 8 — Especialização com Herança](#8-exercício-8--especialização-com-herança)[cite: 1]
9. [Exercício 9 — Reutilização com Mixins](#9-exercício-9--reutilização-de-código-com-mixins)[cite: 1]
10. [Exercício 10 — Polimorfismo e Execução Geral](#10-exercício-10--sobrescrita-polimórfica-e-execução-geral)[cite: 1]

---

## 📖 Detalhamento dos 10 Exercícios[cite: 1]

### 1. Exercício 1 — Abstração e Classes de Apoio[cite: 1]
Modelagem das entidades de suporte que compõem o sistema[cite: 1]:
- `Passageiro`: Informações cadastrais e de contato[cite: 1].
- `PlataformaVenda`: Identificação do canal de emissão[cite: 1].
- `Atendente`: Identificação do colaborador responsável pelo atendimento[cite: 1].

### 2. Exercício 2 — Agregação e Construtor Não Nomeado[cite: 1]
Criação da entidade agregadora `Passagem`, relacionando as classes de apoio por meio de agregação e um construtor padrão não parametrizado[cite: 1].

### 3. Exercício 3 — Flexibilização com Construtores Nomeados[cite: 1]
Definição de múltiplos construtores nomeados (`.somenteCodigo` e `.completa`), permitindo flexibilidade na instanciação dos objetos[cite: 1].

### 4. Exercício 4 — Parâmetros Nomeados e Clareza de Inicialização[cite: 1]
Adoção de chaves `{}` e do modificador `required` para tornar os parâmetros autoexplicativos na instanciação, evitando erros de ordem posicional[cite: 1].

### 5. Exercício 5 — Encapsulamento Manual de Atributos Críticos[cite: 1]
Aplicação de visibilidade privada no atributo `_codigoLocalizador` e criação de métodos manuais `getCodigoLocalizador()` e `setCodigoLocalizador()` com validação de dados[cite: 1].

### 6. Exercício 6 — Refatoração para Getters e Setters Nativos[cite: 1]
Evolução para a sintaxe idiomática da linguagem Dart utilizando as palavras-chave `get` e `set` com validações de regras de negócio[cite: 1].

### 7. Exercício 7 — Comportamentos e Métodos de Negócio[cite: 1]
Implementação de regras de operação do bilhete[cite: 1]:
- `emitirPassagem()`: Emissão da passagem no sistema[cite: 1].
- `cancelarPassagem()`: Cancelamento do bilhete emitido[cite: 1].
- `atualizarPassagem()`: Atualização de informações da reserva[cite: 1].
- `consultarPassagem(String codigo)`: Consulta e retorno de uma instância[cite: 1].

### 8. Exercício 8 — Especialização com Herança[cite: 1]
Especialização da classe através de `PassagemPrimeiraClasse extends Passagem`, herdando a estrutura da classe pai via construtor `super()` e adicionando atributos específicos (como `loungeAcesso`)[cite: 1].

### 9. Exercício 9 — Reutilização de Código com Mixins[cite: 1]
Desacoplamento de responsabilidades transversais com os mixins `Logger` e `Auditoria`, agregando funcionalidades sem sobrecarregar a hierarquia de herança[cite: 1].

### 10. Exercício 10 — Sobrescrita Polimórfica e Execução Geral[cite: 1]
Uso da anotação `@override` no método `atualizarPassagem()` para aplicar comportamento específico de Primeira Classe junto com as chamadas de auditoria e log, validando toda a execução na função `main()`[cite: 1].

---

## 🛠️ Tecnologias Utilizadas[cite: 1]

- **Dart SDK**[cite: 1]
- **Conceitos de POO:** Abstração, Encapsulamento, Herança, Polimorfismo e Composição[cite: 1]
- **Ambiente de Desenvolvimento:** VS Code / DartPad[cite: 1]

---

## 🚀 Como Executar[cite: 1]

1. Clone este repositório[cite: 1]:
```bash
git clone [https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git](https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git)
