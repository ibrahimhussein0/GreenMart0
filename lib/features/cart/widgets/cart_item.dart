import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/product_model.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:gap/gap.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    double unitPrice = double.tryParse(product.price) ?? 0.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 75,
            height: 75,
            child: Image.asset(product.imagePath, fit: BoxFit.contain),
          ),
          Gap(15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.close, color: AppColors.greyColor, size: 20),
                  ],
                ),
                const Gap(4),

                Text(
                  product.unit,
                  style: TextStyles.caption2.copyWith(
                    color: AppColors.dividerColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.borderColor,
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove, size: 18),
                            color: AppColors.greyColor,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            "1",
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.borderColor,
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add, size: 18),
                            color: AppColors.greenColor,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),

                    Text(
                      '\$${unitPrice.toStringAsFixed(2)}',
                      style: TextStyles.subtitle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
