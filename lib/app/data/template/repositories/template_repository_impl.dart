import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/errors/failure.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  @override
  Future<Either<Failure, List<Template>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Template>> getOne(String url) {
    // TODO: implement getOne
    throw UnimplementedError();
  }
}
