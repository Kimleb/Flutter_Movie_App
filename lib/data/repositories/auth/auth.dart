import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/network/dio.dart';

import '../../../domain/Auth/repositories/auth.dart';
import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{


  @override
  Future<Either>signup() async {
    try{


      var response = await sl<DioClient>().post(

      )

    }on DioException catch(e){
      return Left(e.response!.data['Message']);
    }
  }

}