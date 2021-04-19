import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureInjection() async {
    Dio(BaseOptions(baseUrl: 'https://swapi.dev/api/',));
}