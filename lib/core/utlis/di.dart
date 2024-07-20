import 'package:bookly_app/core/utlis/api_service.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void gitinit() {
  gitIt.registerSingleton<ApiService>(ApiService(Dio()));
  gitIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: gitIt.get<ApiService>()));
}
