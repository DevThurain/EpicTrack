
import 'package:dio/dio.dart';
import 'package:epic_track/src/network/repository_impl.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future setupLocaotr() async {
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => RepositoryImpl());
}
