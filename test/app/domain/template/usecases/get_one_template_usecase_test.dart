import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/app/domain/template/usecases/get_one_template_usecase.dart';
import 'package:flutter_dojo/app/errors/template/template_errors.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTemplateRepository extends Mock implements TemplateRepository {}

class MockFailure extends Mock implements Failure {}

void main() {
  MockTemplateRepository _repository;
  GetOneTemplateUseCase _usecase;
  MockFailure _mockFailure;

  final Template tTemplate = Template(
    url: "url",
    name: "teste",
    mass: "70.0",
    height: "175",
  );

  final tId = 'https://www.teste.com/1';

  setUp(() {
    _repository = MockTemplateRepository();
    _usecase = GetOneTemplateUseCase(_repository);
    _mockFailure = MockFailure();
  });

  group('test Usecase template', () {
    test('should get template from the repository', () async {
      //prepare
      when(
        _repository.getOne(any),
      ).thenAnswer(
        (_) async => Right(tTemplate),
      );

      //execute
      final result = await _usecase(tId);

      //assert
      expect(result, Right(tTemplate));
      verify(_repository.getOne(tId)).called(1);
      verifyNoMoreInteractions(_repository);
    });

    test("should return a Exception when call repository as Failure", () async {
      // prepare
      when(_repository.getOne(any)).thenAnswer((_) async => Left(_mockFailure));
      // execute
      final result = await _usecase(tId);
      // assert
      expect(result, isA<Left>());
      expect(result.fold(id,id), isA<Failure>());
      verify(_repository.getOne(tId)).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
