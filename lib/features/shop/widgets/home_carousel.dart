import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/product_model.dart';
import 'package:ibrahim/features/shop/widgets/productCard.dart';
import 'package:gap/gap.dart';

import '../../../utiles/app_colors.dart';
import '../../../utiles/text_styles.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key, required this.title, required this.list});
  final String title;
  final List<ProductModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyles.title1),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: TextStyles.body.copyWith(
                  color: AppColors.greenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var product = list[index];
              return ProductItemCard(product: product);
            },
            separatorBuilder: (context, index) => Gap(10),
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}
