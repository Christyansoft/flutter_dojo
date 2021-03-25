import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetOneTemplateUseCase implements UseCase<Either<Exception, Template>, int>  {
  final TemplateRepository _repository;

  GetOneTemplateUseCase (this._repository);

  @override
  Future<Either<Exception, Template>> call(int params) {
    // TODO: implement call
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Exception, Template>> call(int id) async {
  //   final result = await _repository.getOne(id);

  //   if (result.isRight() && result == null) throw NotFoundTemplateError();

  //   return result;
  // }
}
