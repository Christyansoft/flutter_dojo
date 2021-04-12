import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/data/template/models/template_model.dart';
import 'package:flutter_dojo/app/data/template/repositories/template_repository_impl.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTemplateDatasource extends Mock implements TemplateDataSource {}

void main() {
  MockTemplateDatasource _datasource;
  TemplateRepositoryImpl _repository;

  final tTemplatemodel = TemplateModel(height: '150', mass: '40', name: 'Teste Flutter', url: 'www.url/id/10');

  setUp(() {
    _datasource = MockTemplateDatasource();
    _repository = TemplateRepositoryImpl(_datasource);
  });

  // group('test repository get one', () {
  //   test('''
  //     Given a Url
  //     When successful
  //     Then return Right(result)
  //   ''', () async {
  //     var tTemplate = TemplateModel(
  //       url: "url",
  //       name: "teste",
  //       mass: "70.0",
  //       height: "175",
  //     );

  //     var tId = 'https://www.teste.com/1';
  //     //prepare
  //     when(_datasource.getOne(any)).thenAnswer((_) async => tTemplate);

  //     //execute
  //     final result = await _repository.getOne(tId);

  //     //assert
  //     expect(result, isA<Right>());
  //     verify(_datasource.getOne(tId)).called(1);
  //   });
  // });

  group('test repository get all', () {
    test('''
      Call repository getAll
      When DioError
      Then return Left(DioFailure)
    ''', () async {
      //prepare
      // Response response = Response();
      when(_datasource.getAll()).thenThrow(DioError());
      // execute
      final result = await _repository.getAll();
      // assert
      expect(result.fold(id, id), isA<DioFailure>());
      verify(_repository.getAll()).called(1);
    });
    test('''
      Call repository getAll
      When TemplateEntity
      Then return Right(TemplateEntity)
    ''', () async {
      //prepare
      // Response response = Response();
      when(_datasource.getAll()).thenAnswer((_) async => [tTemplatemodel]);
      // execute
      final result = await _repository.getAll();
      // assert
      expect( result | null, isA<TemplateEntity>());
      verify(_datasource.getAll()).called(1);
      verifyNoMoreInteractions(_datasource);
    });
  });
}
