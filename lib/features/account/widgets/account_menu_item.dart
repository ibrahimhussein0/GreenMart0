import 'package:flutter/material.dart';
import 'package:ibrahim/utiles/app_colors.dart';

import '../../../utiles/text_styles.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(icon, color: AppColors.blackColor, size: 22),
          title: Text(
            title,
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColors.blackColor,
          ),
          onTap: onTap,
        ),
        Divider(thickness: 1, color: AppColors.dividerColor, height: 1),
      ],
    );
  }
}
