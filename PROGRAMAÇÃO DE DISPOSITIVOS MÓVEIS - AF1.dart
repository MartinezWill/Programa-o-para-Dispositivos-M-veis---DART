// EXERCÍCIO 1 - Abstração e Classes de Apoio
class Passageiro {
  String? nome;
  String? cpf;
  String? rg;
  String? email;
  String? celular;

  Passageiro({this.nome, this.cpf, this.rg, this.email, this.celular});
}

class PlataformaVenda {
  int? codigoCanal;
  String? nomeCanal;

  PlataformaVenda({this.codigoCanal, this.nomeCanal});
}

class Atendente {
  String? nome;
  String? matricula;
  String? cargo;
  String? email;
  String? celular;
  double? salario;

  Atendente({this.nome, this.matricula, this.cargo, this.email, this.celular, this.salario});
}

// EXERCÍCIO 2 - Agregação e Construtor Não Nomeado (Padrão)
class PassagemEx2 {
  String? _codigoLocalizador = "";
  Passageiro? passageiro;
  PlataformaVenda? plataforma;
  Atendente? atendente;
  String? observacoes;

  PassagemEx2();
}

// EXERCÍCIO 3 - Flexibilização com Construtores Nomeados
class PassagemEx3 {
  String? _codigoLocalizador = "";
  Passageiro? passageiro;
  PlataformaVenda? plataforma;
  Atendente? atendente;
  String? observacoes;

  PassagemEx3();

  PassagemEx3.somenteCodigo(String codigoLocalizador) {
    _codigoLocalizador = codigoLocalizador;
  }

  PassagemEx3.completa(
    String codigoLocalizador,
    this.passageiro,
    this.plataforma,
    this.atendente,
    this.observacoes,
  ) {
    _codigoLocalizador = codigoLocalizador;
  }
}

// EXERCÍCIO 4 - Parâmetros Nomeados e Clareza de Inicialização
class PassagemEx4 {
  String? _codigoLocalizador = "";
  Passageiro? passageiro;
  PlataformaVenda? plataforma;
  Atendente? atendente;
  String? observacoes;

  PassagemEx4.codigoEPassageiro({String? codigoLocalizador, this.passageiro}) {
    if (codigoLocalizador != null) {
      _codigoLocalizador = codigoLocalizador;
    }
  }

  PassagemEx4.all(
    String codigoLocalizador, {
    required this.passageiro,
    required this.plataforma,
    required this.atendente,
    this.observacoes,
  }) {
    _codigoLocalizador = codigoLocalizador;
  }
}

// EXERCÍCIO 5 - Encapsulamento Manual de Atributos Críticos
class PassagemEx5 {
  String? _codigoLocalizador = "";

  String? getCodigoLocalizador() {
    return _codigoLocalizador;
  }

  void setCodigoLocalizador(String? codigoLocalizador) {
    if (codigoLocalizador == null || codigoLocalizador.isEmpty) {
      print("[Ex5] Erro: Código localizador de passagem inválido!");
      return;
    }
    _codigoLocalizador = codigoLocalizador;
  }
}

// EXERCÍCIO 6 - Refatoração para Getters e Setters Nativos do Dart
class PassagemEx6 {
  String? _codigoLocalizador;

  String? get codigoLocalizador => _codigoLocalizador;

  set codigoLocalizador(String? valor) {
    if (valor != null && valor.trim().isNotEmpty) {
      _codigoLocalizador = valor;
    } else {
      print("[Ex6] Erro: O código localizador não pode ser nulo ou vazio.");
    }
  }
}


// EXERCÍCIO 7 - Comportamentos e Métodos de Negócio
class PassagemEx7 {
  String codigoLocalizador;

  PassagemEx7({required this.codigoLocalizador});

  void emitirPassagem() {
    print("[Ex7] Passagem $codigoLocalizador emitida com sucesso!");
  }

  bool cancelarPassagem() {
    print("[Ex7] Passagem $codigoLocalizador cancelada com sucesso!");
    return true;
  }

  void atualizarPassagem() {
    print("[Ex7] Passagem $codigoLocalizador atualizada com sucesso!");
  }

  PassagemEx7 consultarPassagem(String codigo) {
    print("[Ex7] Passagem $codigo consultada com sucesso!");
    return PassagemEx7(codigoLocalizador: codigo);
  }
}

// EXERCÍCIO 8 - Especialização com Herança
class PassagemBaseEx8 {
  String codigo;
  Atendente? atendente;

  PassagemBaseEx8.all({required this.codigo, this.atendente});
}

class PassagemPrimeiraClasseEx8 extends PassagemBaseEx8 {
  String? loungeAcesso;

  PassagemPrimeiraClasseEx8({
    required String codigo,
    Atendente? atendente,
    required this.loungeAcesso,
  }) : super.all(codigo: codigo, atendente: atendente);
}

// EXERCÍCIO 9 - Reutilização de Código com Mixins
mixin Logger {
  void log(String mensagem) {
    print("[LOG]: $mensagem");
  }
}

mixin Auditoria {
  void auditar(String mensagem) {
    print("[AUDITORIA]: $mensagem");
  }
}

class PassagemPrimeiraClasseEx9 extends PassagemBaseEx8 with Logger, Auditoria {
  String? loungeAcesso;

  PassagemPrimeiraClasseEx9({
    required String codigo,
    Atendente? atendente,
    required this.loungeAcesso,
  }) : super.all(codigo: codigo, atendente: atendente);
}

// EXERCÍCIO 10 - Sobrescrita Polimórfica e Execução Geral
class PassagemFinal {
  String codigo;
  Atendente? atendente;

  PassagemFinal.all({required this.codigo, this.atendente});

  void emitirPassagem() {
    print("Passagem emitida com sucesso!");
  }

  bool cancelarPassagem() {
    print("Passagem cancelada com sucesso!");
    return true;
  }

  void atualizarPassagem() {
    print("Passagem atualizada com sucesso!");
  }

  PassagemFinal consultarPassagem(String codigo) {
    print("Passagem consultada com sucesso!");
    return PassagemFinal.all(codigo: codigo);
  }
}

class PassagemPrimeiraClasseFinal extends PassagemFinal with Logger, Auditoria {
  String? loungeAcesso;

  PassagemPrimeiraClasseFinal({
    required String codigo,
    Atendente? atendente,
    required this.loungeAcesso,
  }) : super.all(codigo: codigo, atendente: atendente);

  @override
  void atualizarPassagem() {
    print("Passagem de Primeira Classe atualizada com sucesso!");
    log("Alteração realizada pelo atendente: ${atendente?.nome ?? 'Sistema'}");
    auditar("Verificação de segurança feita para a Primeira Classe.");
  }
}


void main() {
  print("=== TESTANDO EXERCÍCIO 10 ===");
  Atendente atendenteAna = Atendente(nome: "Ana Silva", matricula: "MAT-102");

  PassagemFinal passagemComum = PassagemFinal.all(
    codigo: "ECO-123",
    atendente: atendenteAna,
  );

  passagemComum.emitirPassagem();
  passagemComum.atualizarPassagem();

  print("\n--- Primeira Classe ---");
  PassagemPrimeiraClasseFinal passagemVip = PassagemPrimeiraClasseFinal(
    codigo: "VIP-999",
    atendente: atendenteAna,
    loungeAcesso: "Lounge VIP Internacional SkyHorizon",
  );

  passagemVip.emitirPassagem();
  passagemVip.atualizarPassagem();
}