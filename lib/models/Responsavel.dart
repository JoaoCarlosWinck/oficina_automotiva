import 'Veiculo.dart';

class Responsavel {
  final int? id;
  final String cpf;
  String nome;
  String celular;
  String? email;
  bool ativo;
  final List<Veiculo>? veiculos;

  Responsavel({this.id, required this.cpf, required this.nome, required this.celular, this.email, this.ativo = true, this.veiculos});

  Responsavel copyWith({int? id, String? cpf, String? nome, String? celular, String? email, bool? ativo, List<Veiculo>? veiculos}) {
    return Responsavel(
      id: id ?? this.id,
      cpf: cpf ?? this.cpf,
      nome: nome ?? this.nome,
      celular: celular ?? this.celular,
      email: email ?? this.email,
      ativo: ativo ?? this.ativo,
      veiculos: veiculos ?? this.veiculos,
    );
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'cpf': cpf,
      'nome': nome,
      'celular': celular,
      'email': email,
      'ativo': ativo,
      'veiculos': veiculos,
    };
    if (id != null) map['id'] = id;
    return map;
  }

  factory Responsavel.fromMap(Map<String, dynamic> map) {
    return Responsavel(
      id: map['id'] as int?,
      cpf: map['cpf'] as String,
      nome: map['nome'] as String,
      celular: map['celular'] as String,
      email: map['email'] as String,
      ativo: map['ativo'] as bool,
      veiculos: map['veiculos'] as List<Veiculo>,
    );
  }

  @override
  String toString() => 'Responsavel(id: $id, cpf: $cpf, nome: $nome, celular: $celular, email: $email, ativo: $ativo, veiculos: $veiculos)';




  void adicionarVeiculo(Veiculo veiculo) {
    veiculos!.add(veiculo);
  }

  String contato() {
    return toString();
  }


}