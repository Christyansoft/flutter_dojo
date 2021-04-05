import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';

class TemplateDataSourceApi implements TemplateDataSource {
  @override
  Future<Either<Exception, List<TemplateEntity>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, TemplateEntity>> getOne(String id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }
}
