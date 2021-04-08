import 'package:flutter_dojo/app/data/template/models/template_model.dart';

abstract class TemplateDataSource {
  Future<List<TemplateModel>> getAll();

  Future<TemplateModel> getOne(String id);
}
