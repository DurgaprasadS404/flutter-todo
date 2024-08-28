import 'package:dio/dio.dart';
import 'package:flutter_template/core/network/dio_client.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioClient>(DioClient());
}
