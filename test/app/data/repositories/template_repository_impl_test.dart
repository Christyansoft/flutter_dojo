import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/data/template/repositories/template_repository_impl.dart';
import 'package:mockito/mockito.dart';

class MockTemplateDatasource extends Mock implements TemplateDataSource {}

void main() {
  MockTemplateDatasource _datasource;
  TemplateRepositoryImpl _repository;

  // final TemplateEntity tTemplate = TemplateEntity(
  //   url: "url",
  //   name: "teste",
  //   mass: "70.0",
  //   height: "175",
  // );

  // final tId = 'https://www.teste.com/1';

  // setUp(() {
  //   _repository = MockTemplateRepository();
  //   _usecase = GetOneTemplateUseCase(_repository);
  // });

  // group('test Usecase template', () {
  //   test('should get template from the repository', () async {
  //     //prepare
  //     when(
  //       _repository.getOne(any),
  //     ).thenAnswer(
  //       (_) async => Right(tTemplate),
  //     );

  //     //execute
  //     final result = await _usecase(tId);

  //     //assert
  //     expect(result, Right(tTemplate));
  //     verify(_repository.getOne(tId)).called(1);
  //     verifyNoMoreInteractions(_repository);
  //   });

  //   test("should return a Exception when call repository as Failure", () async {
  //     // prepare
  //     when(_repository.getOne(any))
  //         .thenAnswer((_) async => Left(GetOneTemplateError()));
  //     // execute
  //     final result = await _usecase(tId);
  //     // assert
  //     expect(result.fold(id, id), isA<Failure>());
  //     expect(result, Left(GetOneTemplateError()));
  //     verify(_repository.getOne(tId)).called(1);
  //     verifyNoMoreInteractions(_repository);
  //   });
  // });
}
