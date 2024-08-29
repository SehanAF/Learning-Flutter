// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/common/helpers/is_dark_mode.dart';
import 'package:myapp/common/widgets/appbar/app_bar.dart';
import 'package:myapp/common/widgets/button/basic_app_button.dart';
import 'package:myapp/core/configs/assets/app_vectors.dart';
import 'package:myapp/core/configs/theme/app_colors.dart';
import 'package:myapp/data/models/auth/sign_user_req.dart';
import 'package:myapp/domain/repository/usecases/auth/signin.dart';
import 'package:myapp/presentation/auth/pages/signup.dart';
import 'package:myapp/presentation/auth/pages/signup_or_signin.dart';
import 'package:myapp/presentation/home/pages/home.dart';
import 'package:myapp/service_locator.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppbar(
          title: SvgPicture.asset(
            AppVectors.logo,
            height: 40,
            width: 40,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignupOrSigninPage()));
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _signinText(),
                SizedBox(height: 15),
                _supportText(context),
                SizedBox(height: 50),
                _emailField(context),
                SizedBox(height: 15),
                _passwordField(context),
                SizedBox(height: 35),
                BasicAppButton(
                    onPressed: () async {
                      var result = await s1<SigninUseCase>().call(
                          params: SigninUserReq(
                              email: _email.text.toString(),
                              password: _password.text.toString()));
                      result.fold(
                        (l) {
                          var snackbar = SnackBar(
                            content: Text(l),
                            behavior: SnackBarBehavior.floating,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        },
                        (r) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                              (route) => false);
                        },
                      );
                    },
                    title: "Sign In"),
                SizedBox(height: 25),
                _orDivider(context),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon(AppVectors.bottomGoogle),
                    SizedBox(
                      width: 15,
                    ),
                    _buildSocialIcon(context.isDarkMode
                        ? AppVectors.bottomAppleWhite
                        : AppVectors.bottomAppleBlack),
                  ],
                ),
                SizedBox(height: 35),
                _haveAccount(context),
                SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }

  Widget _signinText() {
    return Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _supportText(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'If You Need Any Support ',
              style: TextStyle(
                  color: context.isDarkMode ? Colors.white : Colors.black),
            ),
            TextSpan(
              text: 'Click Here',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("tombol support ditekan");
                },
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailFromField(BuildContext context) {
    return TextFormField(
      controller: _email,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Username is required"; // Validasi jika username kosong
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _orDivider(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: context.isDarkMode ? Colors.white : Colors.black,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Or',
            style: TextStyle(
                color: context.isDarkMode ? Colors.white : Colors.black),
          ),
        ),
        Expanded(
          child: Divider(
            color: context.isDarkMode ? Colors.white : Colors.black,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialIcon(String svgPath) {
    return GestureDetector(
      onTap: () {
        print("social icon ditekan");
      },
      child: Container(
        margin: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: SvgPicture.asset(
                  svgPath,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _haveAccount(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Not A Member ? ',
              style: TextStyle(
                  color: context.isDarkMode ? Colors.white : Colors.black),
            ),
            TextSpan(
              text: 'Register Now',
              style: TextStyle(
                color: Color(0xff288CE9),
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
            ),
          ],
        ),
      ),
    );
  }
}
