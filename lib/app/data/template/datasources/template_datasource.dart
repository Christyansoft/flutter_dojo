import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/data/template/models/template_model.dart';
import 'package:flutter_dojo/common/errors/failure.dart';

abstract class TemplateDataSource {
  Future<Either<Failure, List<TemplateModel>>> getAll();

  Future<Either<Failure, TemplateModel>> getOne(String id);
}
