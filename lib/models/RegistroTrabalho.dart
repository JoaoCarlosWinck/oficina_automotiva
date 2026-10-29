import 'situacao_trabalho.dart';
import 'trabalho.dart';

class RegistroTrabalho {
  final Trabalho trabalho;          // FK trabalhos_idtrabalhos (imutável)
  SituacaoTrabalho _situacao;       // única coisa que muda

  RegistroTrabalho({
    required this.trabalho,
    SituacaoTrabalho situacao = SituacaoTrabalho.pendente,
  }) : _situacao = situacao;

  SituacaoTrabalho get situacao => _situacao;

  // ---------- Métodos de negócio ----------
  double get valor => trabalho.valor;

  bool get estaConcluido => _situacao == SituacaoTrabalho.concluido;

  void iniciar() {
    if (_situacao != SituacaoTrabalho.pendente) {
      throw StateError('Só é possível iniciar um trabalho pendente.');
    }
    _situacao = SituacaoTrabalho.emExecucao;
  }

  void concluir() {
    if (_situacao != SituacaoTrabalho.emExecucao) {
      throw StateError('Só é possível concluir um trabalho em execução.');
    }
    _situacao = SituacaoTrabalho.concluido;
  }

  // ---------- copyWith: trabalho fica protegido ----------
  RegistroTrabalho copyWith({SituacaoTrabalho? situacao}) => RegistroTrabalho(
        trabalho: trabalho,
        situacao: situacao ?? _situacao,
      );

  // ---------- Conversões ----------
  Map<String, dynamic> toMap() => {
        'trabalho': trabalho.toMap(),
        'situacao': _situacao.index, // TINYINT
      };

  factory RegistroTrabalho.fromMap(Map<String, dynamic> map) =>
      RegistroTrabalho(
        trabalho: Trabalho.fromMap(map['trabalho'] as Map<String, dynamic>),
        situacao: SituacaoTrabalho.values[map['situacao'] as int],
      );

  @override
  String toString() =>
      'RegistroTrabalho(${trabalho.tipo}, situacao: ${_situacao.name})';
}