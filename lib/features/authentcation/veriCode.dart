import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ibrahim/features/MainScreen/mainScreen.dart';
import 'package:ibrahim/functions/navigations.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

import '../../utiles/text_styles.dart';
import '../../widgets/main_button.dart';

class Vericode extends StatefulWidget {
  const Vericode({super.key});

  @override
  State<Vericode> createState() => _VericodeState();
}

class _VericodeState extends State<Vericode> {
  int _start = 60;
  late Timer _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    setState(() {
      _start = 60;
      _canResend = false;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _timer.cancel();
          _canResend = true;
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter verification code", style: TextStyles.headline1),
                  const Gap(10),
                  Text(
                    "We have sent SMS to: 01XXXXXXXXXX ",
                    style: TextStyles.caption1.copyWith(
                      color: const Color(0xFF7C7C7C),
                    ),
                  ),
                  const Gap(30),
                  Center(
                    child: Pinput(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      length: 5,
                      defaultPinTheme: PinTheme(
                        width: 60,
                        height: 60,
                        textStyle: TextStyles.caption2,
                        decoration: BoxDecoration(
                          color: AppColors.accentColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onCompleted: (pin) {
                        print("Completed Pin: $pin");
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Phone Number",
                        style: TextStyles.caption1.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                  const Gap(25),
                  MainButton(
                    title: "Confirm",
                    onTap: () {
                      pushReplacement(context, Mainscreen());
                    },
                  ),
                  const Gap(20),
                  Center(
                    child: GestureDetector(
                      onTap: _canResend
                          ? () {
                              startTimer();
                            }
                          : null,
                      child: Text(
                        _canResend
                            ? "Resend OTP"
                            : "Resend confirmation code (0:${_start < 10 ? '0$_start' : _start})",
                        style: TextStyles.caption1.copyWith(
                          color: _canResend ? Colors.red : AppColors.greyColor,
                          fontWeight: _canResend
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
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
