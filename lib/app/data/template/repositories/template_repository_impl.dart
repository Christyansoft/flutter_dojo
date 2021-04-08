import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dojo/app/data/template/datasources/template_datasource.dart';
import 'package:flutter_dojo/app/domain/template/entities/template_entity.dart';
import 'package:flutter_dojo/app/domain/template/repositories/template_repository.dart';
import 'package:flutter_dojo/app/errors/template/template_errors.dart';
import 'package:flutter_dojo/common/errors/failure.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  final TemplateDataSource _dataSource;

  TemplateRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<TemplateEntity>>> getAll() async {
    try {
      final result = await _dataSource.getAll();
      if (result == null) {
        return Left(GetAllTemplateError(message: 'Data is null of datasource'));
      }
      return Right(result);
    } on DioError catch (error) {
      return Left(DioFailure(message: error.message, statusCode: error.response?.statusCode ?? 400));
    } catch (error) {
      return Left(GetAllTemplateError(message: 'Datasource error not found'));
    }
  }

  @override
  Future<Either<Failure, TemplateEntity>> getOne(String url) async => Right(await _dataSource.getOne(url));
}
