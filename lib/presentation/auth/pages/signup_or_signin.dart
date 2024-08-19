// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/common/helpers/is_dark_mode.dart';
import 'package:myapp/common/widgets/appbar/app_bar.dart';
import 'package:myapp/common/widgets/button/basic_app_button.dart';
import 'package:myapp/core/configs/assets/app_images.dart';
import 'package:myapp/core/configs/assets/app_vectors.dart';
import 'package:myapp/core/configs/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.imageBillie,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo,
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Enjoy Listening To Music",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {},
                          title: "Register",
                        )
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: context.isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                          
                          
                        )
                      ),
                    ],
                  )
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}