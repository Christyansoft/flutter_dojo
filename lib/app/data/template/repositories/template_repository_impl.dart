import 'package:flutter_dojo/app/domain/template/entities/template.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  @override
  Future<Either<Exception, List<Template>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, Template>> getOne(int id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }
}
