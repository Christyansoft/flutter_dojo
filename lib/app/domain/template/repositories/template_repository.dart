import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';

abstract class TemplateRepository {
  Future<Either<Exception, List<Template>>> getAll();

  Future<Either<Exception, Template>> getOne(String url);
}
