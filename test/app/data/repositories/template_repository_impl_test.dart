import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/data/template/models/template_model.dart';
import 'package:flutter_dojo/app/data/template/repositories/template_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTemplateDatasource extends Mock implements TemplateDataSource {}

void main() {
  MockTemplateDatasource _datasource;
  TemplateRepositoryImpl _repository;

  setUp(() {
    _datasource = MockTemplateDatasource();
    _repository = TemplateRepositoryImpl(_datasource);
  });

  group('test repository template', () {
    test('''
      Given a Url
      When successful
      Then return Right(result)
    ''', () async {
      var tTemplate = TemplateModel(
        url: "url",
        name: "teste",
        mass: "70.0",
        height: "175",
      );

      var tId = 'https://www.teste.com/1';
      //prepare
      when(_datasource.getOne(any)).thenAnswer((_) async => tTemplate);

      //execute
      final result = await _repository.getOne(tId);

      //assert
      expect(result, isA<Right>());
      verify(_datasource.getOne(tId)).called(1);
    });

    test('''
      Given a Url
      When successful
      Then return Right(result)
    ''', () async {
      // prepare
      var tId = 'https://www.teste.com/1';
      //prepare
      when(_datasource.getOne(any)).thenThrow(DioError());
      // execute
      final result = await _repository.getOne(tId);
      // assert
      expect(result, isA<Left>());
      verify(_repository.getOne(tId)).called(1);
    });
  });
}
