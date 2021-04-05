import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetAllTemplateUseCase
    implements UseCase<Either<Failure, List<TemplateEntity>>, NoParams> {
  final TemplateRepository _repository;
  GetAllTemplateUseCase(this._repository);

  @override
  Future<Either<Failure, List<TemplateEntity>>> call(NoParams params) async {
    return await _repository.getAll();
  }
}
