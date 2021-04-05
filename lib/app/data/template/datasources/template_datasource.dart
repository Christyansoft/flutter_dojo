import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';

abstract class TemplateDataSource {
  Future<Either<Exception, List<TemplateEntity>>> getAll();

  Future<Either<Exception, TemplateEntity>> getOne(String id);
}
