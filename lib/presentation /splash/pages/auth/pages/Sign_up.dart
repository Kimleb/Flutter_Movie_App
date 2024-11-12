import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/common/helper/navigation/app_navigation.dart';
import 'package:movie_app/core/configs/theme/app_colors.dart';
import 'package:movie_app/presentation%20/splash/pages/auth/pages/sign_in.dart';
import 'package:reactive_button/reactive_button.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.only(top: 100, right: 16, left:16),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              _signupText(),
              const SizedBox(height: 10,),
              _emailField(),
              const SizedBox(height: 20,),
              _passwordField(),
              const SizedBox(height: 60),
              _signupButton(),
              const SizedBox(height: 10,),
              _signUpText(context),

            ],
          )),

    );
  }

  Widget _signupText(){
    return  const Text(
      'Sign UP',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),);
  }

  Widget _emailField(){
    return const TextField(
      decoration: InputDecoration(
          hintText: 'Email'
      ),
    );
  }
  Widget _passwordField(){
    return const TextField(
      decoration: InputDecoration(
          hintText: 'Password'
      ),
    );
  }

  Widget _signupButton(){

    return ReactiveButton(
        title: 'S I G N  U P',
        activeColor: AppColors.primary,
        onPressed:() async {},
        onSuccess: ()  {},
        onFailure: (error)  {});
  }

  Widget _signUpText(BuildContext context){
    return  Text.rich(

        TextSpan(
            children: [
               TextSpan(
                   text: "Already have an Account with us?"
              ),
              TextSpan(
                  text: "Sign IN!",
                  recognizer: TapGestureRecognizer()..onTap=(){
                    AppNavigator.push(context, const SignInPage());
                  },
                  style: const TextStyle(
                      color: Colors.blue
                  )


              )
            ]
        ));

  }

}
