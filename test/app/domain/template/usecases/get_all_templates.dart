// TODO: implementar teste do usecase get all templates

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../lib/app/domain/template/repositories/template_repository.dart';

class MockTemplateRepository extends Mock implements TemplateRepository {}

void main() {
  MockTemplateRepository repository;

  setUp(() {});
}
