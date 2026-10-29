import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utiles/text_styles.dart';

class CheckoutRowItem extends StatelessWidget {
  const CheckoutRowItem({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyles.caption1.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  value,
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
                ),
                Gap(5),
                Icon(Icons.arrow_forward_ios, size: 18),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 15),
      ],
    );
  }
}
