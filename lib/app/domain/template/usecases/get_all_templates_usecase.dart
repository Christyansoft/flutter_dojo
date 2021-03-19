import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetAllTemplateUseCase
    implements UseCase<Either<Exception, List<Template>>, NoParams> {
  final TemplateRepository _repository;
  GetAllTemplateUseCase(this._repository);

  @override
  Future<Either<Exception, List<Template>>> call(NoParams params) async {
    return await _repository.getAll();
  }
}
