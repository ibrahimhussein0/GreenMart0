import 'package:flutter/material.dart';
import 'package:ibrahim/constants/app_assets.dart';
import 'package:ibrahim/features/MainScreen/mainScreen.dart';
import 'package:ibrahim/functions/navigations.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/widgets/main_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../utiles/text_styles.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: SvgPicture.asset(
                  AppAssets.acceptedIconSVG,
                  fit: BoxFit.contain,
                ),
              ),

              Gap(40),

              Text(
                "Your Order has been\naccepted",
                textAlign: TextAlign.center,
                style: TextStyles.headline2.copyWith(height: 1.3),
              ),
              Gap(16),

              Text(
                "Your items has been placcd and is on\nit's way to being processed",
                textAlign: TextAlign.center,
                style: TextStyles.caption1.copyWith(
                  color: Colors.grey,
                  height: 1.4,
                ),
              ),
              Gap(30),

              MainButton(
                title: "Go To Home",
                onTap: () {
                  pushReplacement(context, const Mainscreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
