import 'package:bookly/core/apiService/apiService.dart';
import 'package:bookly/feature/home/data/repo/home_repo_Imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio(),),);
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>(),),);
}
