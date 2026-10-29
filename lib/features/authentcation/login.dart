import 'package:flutter/material.dart';
import 'package:ibrahim/features/MainScreen/mainScreen.dart';
import 'package:ibrahim/features/authentcation/signUp.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:ibrahim/widgets/custom_field.dart';
import 'package:ibrahim/widgets/main_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../constants/app_assets.dart';
import '../../functions/navigations.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: .start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppAssets.coloredCarrotSVG),
                  ),
                  Gap(40),
                  Text("Login", style: TextStyles.title1),
                  Gap(10),
                  Text(
                    "Enter Your Email And Password",
                    style: TextStyles.caption1.copyWith(
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                  Gap(40),
                  Customfield(title: "Email", hintText: "example@gmail.com"),
                  Gap(30),
                  Customfield(title: "Password", hintText: "********"),
                  Gap(10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyles.body.copyWith(
                          color: AppColors.greenColor,
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  MainButton(
                    title: "Log In",
                    onTap: () {
                      pushReplacement(context, Mainscreen());
                    },
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyles.caption1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushReplacement(context, Signup());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: .zero,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                        ),
                        child: Text(
                          "SignUp",
                          style: TextStyles.caption1.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.greenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
