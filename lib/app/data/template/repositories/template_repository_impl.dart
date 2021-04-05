import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/data/template/models/template_model.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/common/errors/failure.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  final TemplateDataSource _dataSource;

  TemplateRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<TemplateModel>>> getAll() {
    return _dataSource.getAll();
  }

  @override
  Future<Either<Failure, TemplateModel>> getOne(String url) {
    return _dataSource.getOne(url);
  }
}
