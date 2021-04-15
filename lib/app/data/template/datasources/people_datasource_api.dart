import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_dojo/app/data/template/datasources/people_datasource.dart';
import 'package:flutter_dojo/app/data/template/models/people_model.dart';

class PeopleDataSourceApi implements PeopleDataSource {
  final DioForNative _client;

  PeopleDataSourceApi(this._client);
  @override
  Future<List<PeopleModel>> getAll() async {
    final response = await _client.get('/people');
    if (response.statusCode == 200) {
      final result = (response.data["results"] as List)
          .map((e) => PeopleModel.fromJson(e))
          .toList();
      return result;
    }else{
      // throw
    }
    
  }

  @override
  Future<PeopleModel> getOne(String id) {
    throw UnimplementedError();
  }
}
