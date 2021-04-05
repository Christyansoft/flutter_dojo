import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetOneTemplateUseCase
    implements UseCase<Either<Failure, TemplateEntity>, String> {
  final TemplateRepository _repository;

  GetOneTemplateUseCase(this._repository);

  @override
  Future<Either<Failure, TemplateEntity>> call(String url) {
    //return _repository.getOne(url);
    //
    TemplateEntity result;
    return Right(result);
  }
}

class Params extends Equatable {
  final int id;

  Params({@required this.id});
  List<Object> get props => [id];
}
