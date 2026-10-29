import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/dummy_data.dart';
import 'package:ibrahim/features/shop/widgets/home_grid.dart';
import 'package:ibrahim/widgets/custom_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../constants/app_assets.dart';
import '../../../utiles/app_colors.dart';
import '../../../utiles/text_styles.dart';
import '../widgets/home_carousel.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: SvgPicture.asset(
          AppAssets.fullLogoSVG,
          colorFilter: const ColorFilter.mode(
            AppColors.greenColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Customfield(hintText: "Search", prefixIcon: Icons.search),
            Gap(12),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeCarousel(title: "Exclusive Offer", list: offersList),
                    Gap(12),
                    HomeCarousel(title: "Best Selling", list: bestSellingList),
                    Gap(12),
                    Text("Picks For You", style: TextStyles.title1),
                    Gap(12),
                    HomeGrid(list: allProductsList),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
