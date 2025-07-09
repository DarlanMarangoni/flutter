main() {
  int a = 3;
  double b = 3.1;
  var c = 'Darlan';
  bool estaChovendo = true;
  bool estaFrio = false;
  var nomes = ['Darlan', 'Vanessa', 'Leonardo'];
  nomes.add('Carlos');
  nomes.add('Marilza');

  print(nomes.length);
  print(nomes.elementAt(1));
  print(nomes[2]);
  print(estaFrio);
  print(estaChovendo);
  print(a + b);
  print(c);

  Set<int> conjunto = {0, 1, 2, 3, 4, 5};
  print(conjunto.length);
  print(conjunto is Set);
  print(conjunto);

  Map<String, double> notas = {'Darlan': 10.0, 'Leonardo': 9.0};

  for (var chave in notas.keys) {
    print(chave);
  }

  for (var value in notas.values) {
    print('value = $value');
  }

  for (var item in notas.entries) {
    print('chave = ${item.key}, value = ${item.value}');
  }

  dynamic x = 'Teste';
  x = 123;
  x = false;

  print('Valores dinamicos nao sao tipados, podemos mudar em runtime x = $x');

  // const and final cant change
  final d = 1;
  const e = 5;

  final result1 = exec(a, d, (a, d) {
    return a - d;
  });

  final result2 = exec(a, d, (a, d) => a * d);

  print(result1);
  print(result2);

  var p1 = new Produto('Lapis', 1.00);

  print(p1.nome);

  var p2 = Produto('Borracha', 2.0);

  print('nome  = ${p2.nome}, valor = ${p2.preco}');

  var filho = Pessoa(nome: 'Leonardo', idade: 8);

  print(filho.nome);
}

// param without type is dynamic
soma(a, b) {
  return (a + b);
}

/*
  comentario de linhas
*/
somaInt(int a, int b) {
  return a + b;
}

int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

class Produto {
  String? nome;
  double? preco;

  Produto(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }
}

class Pessoa {
  String? nome;
  int? idade;

  // Parametro nomeado com valor default, pode ser usado em metodo
  Pessoa({this.nome, this.idade = 9});
}
