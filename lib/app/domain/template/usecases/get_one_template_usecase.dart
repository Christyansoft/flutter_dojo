import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetOneTemplateUseCase
    implements UseCase<Either<Exception, Template>, String> {
  final TemplateRepository _repository;

  GetOneTemplateUseCase(this._repository);

  @override
  Future<Either<Exception, Template>> call(String url) {
    return _repository.getOne(url);
  }
}

class Params extends Equatable {
  final id;

  Params({@required this.id});
  List<Object> get props => [id];
}
