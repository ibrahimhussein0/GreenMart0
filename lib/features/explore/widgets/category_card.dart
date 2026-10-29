import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/category_model.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:gap/gap.dart';

import '../../../functions/navigations.dart';
import '../page/categoryProducts_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.product});
  final CategoryModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(
          context,
          CategoryProductsScreen(
            categoryId: product.id,
            categoryTitle: product.title,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: product.borderColor, width: 1.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Image.asset(product.image, fit: BoxFit.contain),
              ),
            ),
            const Gap(8),

            Expanded(
              flex: 2,
              child: Text(
                product.title,
                style: TextStyles.caption1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
