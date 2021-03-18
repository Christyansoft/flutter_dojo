import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/errors/template_errors.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';

mixin GetOneTemplate {
  Future<Either<Exception, Template>> call(int id);
}

class GetOneTemplateImpl implements GetOneTemplate {
  final TemplateRepository _repository;

  GetOneTemplateImpl(this._repository);

  @override
  Future<Either<Exception, Template>> call(int id) async {
    final result = await _repository.getOne(id);

    if (result.isRight() && result == null) throw NotFoundTemplateError();

    return result;
  }
}
