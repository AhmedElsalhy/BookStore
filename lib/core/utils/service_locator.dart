import 'package:book_store/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/Features/search/data/repos/search_repo_impl.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.asNewInstance();

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(getIt.get<ApiService>()),
  );
}
