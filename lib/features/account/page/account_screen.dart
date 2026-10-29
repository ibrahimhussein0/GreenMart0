import 'package:flutter/material.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:gap/gap.dart';
import '../widgets/account_menu_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Gap(20),
              Row(
                children: [
                  Icon(Icons.person, size: 50),
                  Gap(15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ibrahim hus",
                              style: TextStyles.title2.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Gap(8),
                            Icon(
                              Icons.edit,
                              size: 16,
                              color: AppColors.greenColor,
                            ),
                          ],
                        ),
                        Gap(4),
                        Text(
                          "hema@gmail.com",
                          style: TextStyles.caption1.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(25),
              Divider(thickness: 1, color: AppColors.dividerColor),

              Expanded(
                child: ListView(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Orders",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.badge_outlined,
                      title: "My Details",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.location_on_outlined,
                      title: "Delivery Address",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.payment_outlined,
                      title: "Payment Methods",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.local_offer_outlined,
                      title: "Promo Cord",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.notifications_none,
                      title: "Notifecations",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.help_outline,
                      title: "Help",
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      icon: Icons.info_outline,
                      title: "About",
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F3F2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: AppColors.greenColor),
                      Gap(10),
                      Text(
                        "Log Out",
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
