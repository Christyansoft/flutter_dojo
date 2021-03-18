import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/errors/template_errors.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';

mixin GetAllTemplates {
  Future<Either<Exception, List<Template>>> call();
}

class GetAllTemplatesImpl implements GetAllTemplates {
  final TemplateRepository _repository;

  GetAllTemplatesImpl(this._repository);

  @override
  Future<Either<Exception, List<Template>>> call() async {
    final result = await _repository.getAll();

    if (result.isRight() && result.length() == 0) throw NotFoundTemplateError();

    return result;
  }
}
