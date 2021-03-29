import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/app/domain/template/usecases/get_all_templates_usecase.dart';
import 'package:flutter_dojo/app/errors/template/template_errors.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

class MockTemplateRepository extends Mock implements TemplateRepository {}

void main() {
  MockTemplateRepository _repository;
  GetAllTemplateUseCase _usecase;

  final List<Template> tTemplate = [
    Template(url: "url", name: "teste", mass: "70.0", height: "175")
  ];

  setUp(() {
    _repository = MockTemplateRepository();
    _usecase = GetAllTemplateUseCase(_repository);
  });

  group('test Usecase template', () {
    test('should get template from the repository', () async {
      // arrange
      when(_repository.getAll()).thenAnswer((_) async => Right(tTemplate));
      //actual
      final result = await _usecase(NoParams());
      //assert
      expect(result, Right(tTemplate));
      verify(_repository.getAll()).called(1);
      verifyNoMoreInteractions(_repository);
    });

    test('should be get Exception from the repository', () async {
      // arrange
      when(_repository.getAll())
          .thenAnswer((_) async => Left(GetAllTemplateError()));
      // actual
      final result = await _usecase(NoParams());
      // assert
      expect(result, Left(GetAllTemplateError()));
      verify(_repository.getAll()).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
