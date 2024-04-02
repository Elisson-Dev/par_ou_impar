class Usuario {
  String nome = '';
  String idade = '';

  Usuario() {
    nome = '';
    idade = '';
  }

  String get obterNome {
    return nome;
  }

  set alteraNome(String nome) {
    this.nome = nome;
  }

  String get obterIdade {
    return idade;
  }

  set alterarIdade(String idade) {
    this.idade = idade;
  }
}
