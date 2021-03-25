import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetOneTemplateUseCase
    implements UseCase<Either<Exception, Template>, Params> {
  final TemplateRepository _repository;

  GetOneTemplateUseCase(this._repository);

  @override
  Future<Either<Exception, Template>> call(Params params) {
    
    // if (params == null) {
    //   return Left<>;
    // }
    return _repository.getOne(params.id);
  }
}

class Params extends Equatable {
  final int id;

  Params({@required this.id});
  List<Object> get props => [id];
}
