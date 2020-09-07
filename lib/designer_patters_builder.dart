import 'package:designer_patters_builder/builders/funcionario_builder.dart';
import 'package:designer_patters_builder/builders/funcionario_builder_complexo.dart';
import 'package:designer_patters_builder/dio/custom_dio_builder.dart';
import 'package:designer_patters_builder/model/filho_model.dart';

Future<void> execute() async {
  var funcionario1 = FuncionarioBuilder.instance
      .nome('Carlos Silva')
      .idade(33)
      .profissao('FullStack Flutter')
      .addFilho(FilhoModel(nome: 'Filho 1', idade: 10))
      .addFilho(FilhoModel(nome: 'Filho 2', idade: 30))
      .buil();

  print(funcionario1);
  print('');

  var funcionarioSemFilhos = FuncionarioBuilderComplexo.instance
      .nome('Carlos Silva')
      .idade(33)
      .profissao('FullStack Flutter')
      .build();

  print(funcionarioSemFilhos);
  print('');

  var funcionarioComFilhos = FuncionarioBuilderComplexo.instance
      .nome('Carlos Silva')
      .idade(33)
      .profissao('FullStack Flutter')
      .addFilho(FilhoModel(nome: 'Filho 1', idade: 10))
      .build();

  print(funcionarioComFilhos);
  print('');
  print('################### BUILDER NA PRATICA #########################');
  print('post');
  var resultPost = await CustomDioBuilder.instance
      .post()
      .path('https://jsonplaceholder.typicode.com/posts')
      .addHeader('Content-type', 'application/json')
      .params()
      .data({'title': 'titulox', 'body': 'BodyX', 'userId': 1}).run();

  print(resultPost.data);
  print('post');
  print('');

  print('GET com QueryParameters');
  var resultGet = await CustomDioBuilder.instance
      .get()
      .path('https://jsonplaceholder.typicode.com/posts')
      .params()
      .queryParameters()
      .addQueryParam('userId', 1)
      .run();
  print(resultGet.data);
  print('GET com QueryParameters');
  print('###############################################################');
}
