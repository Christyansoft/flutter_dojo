import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';

abstract class TemplateRepository {
  Future<Either<Failure, List<TemplateEntity>>> getAll();

  Future<Either<Failure, TemplateEntity>> getOne(String url);
}
