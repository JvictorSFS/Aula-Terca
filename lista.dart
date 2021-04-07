// Listas em dart - é uma estrutura de dados em guarda os dados 
// de forma sequencial na memoria. É parecido com vetores.


void main(List<String> arguments) {
 // criando uma lista de produtos  
 // <> esse par é conhecido como diamond 
  var produtos = <String>['Cenoura' , 'Banana' , ' Brócolis' , 'Batata' , 'Maça' ];

  // mostrando os elementos
  print(produtos);

  // acessando elementos pelo indice
  print(produtos[0]); //cenoura
  print(produtos[3]); // Batata

  // adicionar elementos na lista (no final)
  produtos.add('Alface');
  print(produtos);

  // rwmovendo elementos
  produtos.remove('Banana');
  print(produtos);

  // removendo pelo índice
  produtos.removeAt(0);
  print(produtos);

  // verificando o tamanho da lista 
  var tam = produtos.length;
  print(' A lista tem$tam produtos.');

  // pesquisar uma ocorrência
  if (produtos.contains('doritos')){
  print('tem doritos');
  } else {
  print('na0 tem doritos');
  produtos.add('doritos');
  print(produtos);
 }
 
 // Treino
 produtos..add('Beteraba')..add('Goiaba')..add('Laranja')..add('Tangerina');

 // percorrer a lista com for() - primeira forma
 for (var i = 0; i < produtos.length; i++){
   print('Intem ${i+i} => ${produtos[i]}'); // acessando pelo indice 
 }

 // Percorrendo com Foreach
 for (var produto in produtos){
    print(produto);
 }

 produtos..add('V1')..add('v2');

for (var i = 0; i < produtos.length; i++){
  print('item ${i + 1} => ${produtos[i]}');
}

var crescente = produtos..sort();
for(var produtos in crescente){
  print(produtos);}

print('');

var decrescenrte = crescente.reversed;
for (var produtos in decrescenrte){
print(produtos);}

// Leitura do teclado
//var entrada = stdin.readLineSync();
//print(entrada);
 
// Trabalhando com objetos 
var alunos = <Aluno>[];
alunos.add(Aluno(ra: 123, nome: 'Victor'));
alunos.add(Aluno(ra: 456, nome: 'Vigarista'));

// Mostrando objetos dentro da lista 
for (var aluno in alunos) {
  print(aluno.nome);
 }
 // Removendo objeto
 alunos.removeWhere((Aluno a) => a.nome == 'Vigarista');

// Atualizar objetos (pelo índice)
  alunos[0].nome = 'Caravana do Gugu';
  for (var aluno in alunos) {
    print(aluno.nome);
  }

  // outra forma de atualizar pelo índice (quando não sei o índice)
  alunos[alunos.indexWhere((Aluno a) => a.nome == 'Caravana do Gugu')].nome =
      'Domingo Legal';
  for (var aluno in alunos) {
    print(aluno.nome);
  }
}
  class Aluno {
    int ra;
    String nome;

    Aluno({this.ra, this.nome});
}

