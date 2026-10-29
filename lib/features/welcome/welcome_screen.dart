import 'package:flutter/material.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../constants/app_assets.dart';
import '../../functions/navigations.dart';
import '../../utiles/app_colors.dart';
import '../../widgets/main_button.dart';
import '../authentcation/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcomeImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 60,
            right: 20,
            left: 20,

            child: Column(
              mainAxisSize: .min,
              children: [
                SvgPicture.asset(AppAssets.carrotSVG),
                Gap(30),
                Text(
                  "Welcome\nto our store",
                  textAlign: TextAlign.center,
                  style: TextStyles.headline1.copyWith(
                    color: AppColors.whiteColor,
                    fontSize: 40,
                    height: 1.2,
                  ),
                ),
                Gap(20),
                Text(
                  "Get your groceries in as fast as one hour",
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                Gap(30),
                MainButton(
                  title: "Get Started",
                  onTap: () {
                    pushReplacement(context, Login());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
