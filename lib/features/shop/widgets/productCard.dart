
import 'package:flutter/material.dart';
import 'package:ibrahim/features/product_details/page/product_details.dart';
import 'package:ibrahim/features/shop/data/product_model.dart';
import 'package:ibrahim/functions/navigations.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:gap/gap.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetails(product: product));
      },
      child: Container(
        width: 170,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.borderColor, width: 1.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: product.heroTag,
                  child: Image.asset(product.imagePath, fit: BoxFit.contain),
                ),
              ),
            ),
            Gap(12),
            Text(product.title, style: TextStyles.title2, maxLines: 1),
            Gap(5),
            Text(
              product.unit,
              style: TextStyles.caption1.copyWith(color: Color(0xFFA19B9B)),
            ),
            Gap(10),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: TextStyles.subtitle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                    ),

                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.add,
                          color: AppColors.whiteColor,
                          size: 22,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
