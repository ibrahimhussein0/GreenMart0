import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/product_model.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:gap/gap.dart';

class FavouriteItemCard extends StatelessWidget {
  const FavouriteItemCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(product.imagePath, fit: BoxFit.contain),
          ),
          const Gap(16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                Text("${product.unit}, Price", style: TextStyles.caption1),
              ],
            ),
          ),

          Row(
            children: [
              Text(
                "\$${product.price}",
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
              ),
              const Gap(8),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black54,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
