import 'package:dartz/dartz.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/data/template/models/template_model.dart';
import 'package:flutter_dojo/common/errors/failure.dart';

class TemplateDataSourceLocal implements TemplateDataSource {
  @override
  Future<List<TemplateModel>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<TemplateModel> getOne(String id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }
}
