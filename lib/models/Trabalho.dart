class Trabalho {
  final int? id;
  final String tipo;
  final String descricao;
  final double valor;
  final bool ativo;

  const Trabalho({this.id, required this.tipo, required this.descricao, required this.valor, required this.ativo});

  Trabalho copyWith({int? id, String? tipo, String? descricao, double? valor, bool? ativo}) {
    return Trabalho(
      id: id ?? this.id,
      tipo: tipo ?? this.tipo,
      descricao: descricao ?? this.descricao,
      valor: valor ?? this.valor,
      ativo: ativo ?? this.ativo
    );
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'tipo': tipo,
      'descricao': descricao,
      'valor': valor,
      'ativo': ativo,
    };
    if (id != null) map['id'] = id; // só inclui se existir
    return map;
  }

  factory Trabalho.fromMap(Map<String, dynamic> map) {
    return Trabalho(
      id: map['id'] as int?,
      tipo: map['tipo'] as String,
      descricao: map['descricao'] as String,
      valor: (map['valor'] as num).toDouble(),
      ativo: map['ativo'] as bool,
    );
  }

  @override
  String toString() => 'Trabalho(id: $id, tipo: $tipo, descricao: $descricao, valor: $valor, ativo: $ativo)';
}