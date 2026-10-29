import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utiles/text_styles.dart';

class Customfield extends StatelessWidget {
  const Customfield({super.key, this.title, this.hintText, this.prefixIcon});
  final String? title;
  final String? hintText;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: TextStyles.caption1.copyWith(
              fontWeight: FontWeight.w600,
              color: Color(0xFF7C7C7C),
            ),
          ),
          Gap(10),
        ],
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
