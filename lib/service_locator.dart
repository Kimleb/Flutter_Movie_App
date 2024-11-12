
import 'package:get_it/get_it.dart';
import 'package:movie_app/core/network/dio.dart';

final sl = GetIt.instance;

void setupServiceLocator(){

  sl.registerSingleton<DioClient>(DioClient());
}
