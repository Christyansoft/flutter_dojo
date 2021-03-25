import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/app/domain/template/usecases/get_all_templates_usecase.dart';
import 'package:flutter_dojo/app/domain/template/usecases/get_one_template_usecase.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

class MockTemplateRepository extends Mock implements TemplateRepository {}

void main() {
  MockTemplateRepository _repository;
  GetOneTemplateUseCase _usecase;

  final Template tTemplate = Template(
    url: "url",
    name: "teste",
    mass: "70.0",
    height: "175",
  );

  final tException = Exception();

  setUp(() {
    _repository = MockTemplateRepository();
    _usecase = GetOneTemplateUseCase(_repository);
  });

  group('test Usecase template', () {
    test('should get template from the repository', () async {
      when(
        _repository.getOne(any),
      ).thenAnswer(
        (_) async => Right(tTemplate),
      );

      final result = await _usecase(any);

      expect(result, Right(tTemplate));
      verify(_repository.getAll()).called(1);
      verifyNoMoreInteractions(_repository);

      // // arrange
      // when(_repository.getAll()).thenAnswer((_) async => Right(tTemplate));
      // //actual
      // final result = await _usecase(NoParams());
      // //assert
      // expect(result, Right(tTemplate));
      // verify(_repository.getAll()).called(1);
      // verifyNoMoreInteractions(_repository);
    });
  });
}
