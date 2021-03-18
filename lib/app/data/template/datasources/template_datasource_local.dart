import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';

class TemplateDataSourceLocal implements TemplateDataSource {
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
