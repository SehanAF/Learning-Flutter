// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/common/helpers/is_dark_mode.dart';
import 'package:myapp/common/widgets/appbar/app_bar.dart';
import 'package:myapp/common/widgets/button/basic_app_button.dart';
import 'package:myapp/core/configs/assets/app_vectors.dart';
import 'package:myapp/core/configs/theme/app_colors.dart';
import 'package:myapp/data/models/auth/create_user_req.dart';
import 'package:myapp/domain/repository/usecases/auth/signup.dart';
import 'package:myapp/presentation/auth/pages/signin.dart';
import 'package:myapp/presentation/auth/pages/signup_or_signin.dart';
import 'package:myapp/presentation/root/pages/root.dart';
import 'package:myapp/service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _fullname = TextEditingController();
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupOrSigninPage()));
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(),
              SizedBox(height: 15),
              _supportText(context),
              SizedBox(height: 50),
              _fullNameField(context),
              SizedBox(height: 15),
              _gmailField(context),
              SizedBox(height: 15),
              _passwordField(context),
              SizedBox(height: 35),
              BasicAppButton(
                onPressed: () async {
                  var result = await s1<SignupUseCase>().call(
                    params: CreateUserReq(
                    fullname: _fullname.text.toString(),
                    email: _email.text.toString(),
                    password: _password.text.toString()
                    )
                  );

                  result.fold(
                    (l) {
                      var snackbar = SnackBar(content: Text(l));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }, 
                    (r) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const RootPage()),
                        (route) => false
                      );
                    },
                  );
                }, 
                title: "Create Account",
              ),
              SizedBox(height: 25),
              _orDivider(context),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialIcon(AppVectors.bottomGoogle),
                  SizedBox(width: 15,),
                  _buildSocialIcon(context.isDarkMode ? AppVectors.bottomAppleWhite : AppVectors.bottomAppleBlack),
                ],
              ),
              SizedBox(height: 35),
              _haveAccount(context), 
              SizedBox(height: 40),
            ],
          ),
        ),
      )
    );
  }
  Widget _registerText() {
    return Text(
      'Register',
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
              style: TextStyle(color: context.isDarkMode ? Colors.white : Colors.black),
            ),
            TextSpan(
              text: 'Click Here',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {
                print("tombol support ditekan");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      controller: _fullname,
      decoration: InputDecoration(
        labelText: 'Full Name',
        hintText: 'Enter your name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );  
  }
  Widget _gmailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );  
  }
  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
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
            style: TextStyle(color: context.isDarkMode ? Colors.white : Colors.black), 
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
              text: 'Do You Have An Account? ',
              style: TextStyle(color: context.isDarkMode ? Colors.white : Colors.black),
            ),
            TextSpan(
              text: 'Sign In',
              style: TextStyle(
                color: Color(0xff288CE9),
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}