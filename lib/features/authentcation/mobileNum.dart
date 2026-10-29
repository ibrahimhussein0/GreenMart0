import 'package:flutter/material.dart';
import 'package:ibrahim/features/authentcation/veriCode.dart';
import 'package:gap/gap.dart';

import '../../functions/navigations.dart';
import '../../utiles/text_styles.dart';
import '../../widgets/custom_field.dart';
import '../../widgets/main_button.dart';

class Mobilenum extends StatelessWidget {
  const Mobilenum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: .start,
                children: [
                  Text("Enter Your Mobile Number", style: TextStyles.headline1),
                  Gap(10),
                  Text(
                    "We need to verify you. We will send you a one time verification code. ",
                    style: TextStyles.caption1.copyWith(
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                  Gap(40),
                  Customfield(hintText: "01*******"),
                  Gap(30),
                  MainButton(
                    title: "Next",
                    onTap: () {
                      pushTo(context, Vericode());
                    },
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
