import 'trabalho.dart';

class RegistroTrabalho {
  final int? id;
  final Trabalho trabalho;          // FK trabalhos_idtrabalhos (imutável)
  String situacao;       // única coisa que muda
  int quantidade;

  RegistroTrabalho({
    this.id,
    required this.trabalho,
    this.situacao = "pendente",
    required this.quantidade,
  });

  // ---------- Métodos de negócio ----------
  double get valor => trabalho.valor;

  void iniciar() {
    if (situacao != "pendente") {
      throw StateError('Só é possível iniciar um trabalho pendente.');
    }
    situacao = "emAndamento";
  }

  void concluir() {
    if (situacao != "emAndamento") {
      throw StateError('Só é possível concluir um trabalho em execução.');
    }
    situacao = "concluido";
  }

  // ---------- copyWith: trabalho fica protegido ----------
  RegistroTrabalho copyWith({int? id, Trabalho? trabalho, String? situacao, int? quantidade}) => RegistroTrabalho(
        id: id ?? this.id,
        trabalho: trabalho ?? this.trabalho,
        situacao: situacao ?? this.situacao,
        quantidade: quantidade ?? this.quantidade,
      );

  // ---------- Conversões ----------
  Map<String, dynamic> toMap() => {
        'id': id,
        'trabalho': trabalho.toMap(),
        'situacao': situacao, // TINYINT
        'quantidade': quantidade,
      };

  factory RegistroTrabalho.fromMap(Map<String, dynamic> map) =>
      RegistroTrabalho(
        id: map['id'] as int,
        trabalho: Trabalho.fromMap(map['trabalho'] as Map<String, dynamic>),
        situacao: map['situacao'] as String,
        quantidade: map['quantidade'] as int,
      );

  @override
  String toString() =>
      'RegistroTrabalho(${trabalho.tipo}, situacao: $situacao)';
}