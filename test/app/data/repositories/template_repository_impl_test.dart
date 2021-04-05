import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/data/template/repositories/template_repository_impl.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockTemplateDatasource extends Mock implements TemplateDataSource {}

void main() {
  MockTemplateDatasource _datasource;
  TemplateRepositoryImpl _repository;

  final TemplateEntity tTemplate = TemplateEntity(
    url: "url",
    name: "teste",
    mass: "70.0",
    height: "175",
  );

  final tId = 'https://www.teste.com/1';

  setUp(() {
    _datasource = MockTemplateDatasource();
    _repository = TemplateRepositoryImpl(_datasource);
  });

  group('test repository template', () {
    test('should get template from the datasource', () async {
      //prepare
      when(
        _datasource.getOne(any),
      ).thenAnswer(
        (_) async => Right(tTemplate),
      );

      //execute
      final result = await _repository.getOne(tId);

      //assert
      expect(result, Right(tTemplate));
      verify(_datasource.getOne(tId)).called(1);
      verifyNoMoreInteractions(_datasource);
    });

    // test("should return a Exception when call repository as Failure", () async {
    //   // prepare
    //   when(_repository.getOne(any))
    //       .thenAnswer((_) async => Left(GetOneTemplateError()));
    //   // execute
    //   final result = await _usecase(tId);
    //   // assert
    //   expect(result.fold(id, id), isA<Failure>());
    //   expect(result, Left(GetOneTemplateError()));
    //   verify(_repository.getOne(tId)).called(1);
    //   verifyNoMoreInteractions(_repository);
    // });
  });
}
