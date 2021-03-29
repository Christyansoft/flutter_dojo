import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/common/errors/failure.dart';
import 'package:flutter_dojo/app/domain/template/entities/template.dart';

abstract class TemplateRepository {
  Future<Either<Failure, List<Template>>> getAll();

  Future<Either<Failure, Template>> getOne(String url);
}
