import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/people_entity.dart';
import 'package:flutter_dojo/app/domain/template/repositories/people_repository.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class GetAllTemplateUseCase
    implements UseCase<Either<Failure, List<PeopleEntity>>, NoParams> {
  final PeopleRepository _repository;
  GetAllTemplateUseCase(this._repository);

  @override
  Future<Either<Failure, List<PeopleEntity>>> call(NoParams params) async {
    return await _repository.getAll();
  }
}
