class FilhoModel {
  String nome;
  int idade;
  FilhoModel({
    this.nome,
    this.idade,
  });

  @override
  String toString() {
    return 'FilhoModel(nome: $nome, idade: $idade)';
  }
}
