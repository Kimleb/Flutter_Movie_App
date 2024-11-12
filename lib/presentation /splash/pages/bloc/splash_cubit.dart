import 'package:bloc/bloc.dart';
import 'package:movie_app/presentation%20/splash/pages/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState>{

  SplashCubit() : super(DisplaySplash());


  void appStarted()async{
await Future.delayed(const Duration(seconds: 2));
    emit(
      UnAuthenticated()
    );
  }

}