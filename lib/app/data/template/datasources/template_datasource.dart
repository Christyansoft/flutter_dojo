import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';

abstract class TemplateDataSource {
  Future<Either<Exception, List<Template>>> getAll();

  Future<Either<Exception, Template>> getOne(int id);
}
