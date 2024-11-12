import 'package:dartz/dartz.dart';

abstract class AuthRepository{
//use of a future is to avoid errors that may occur in the future.... usually used in asynchronous methods
  Future<Either> signup();

}