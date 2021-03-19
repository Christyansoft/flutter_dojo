import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/app/domain/template/usecases/get_all_templates_usecase.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

class MockTemplateRepository extends Mock implements TemplateRepository {}

void main() {
  MockTemplateRepository repository;
  GetAllTemplateUseCase usecase;

  final List<Template> tTemplate = [
    Template(url: "url", name: "teste", mass: "70.0", height: "175")
  ];

  setUp(() {
    repository = MockTemplateRepository();
    usecase = GetAllTemplateUseCase(repository);
  });
  test('should get template from the repository', () async {
    // arrange
    when(repository.getAll()).thenAnswer((_) async => Right(tTemplate));
    //actual
    final result = await usecase(NoParams());
    //assert
    expect(result, Right(tTemplate));
    verify(repository.getAll()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
