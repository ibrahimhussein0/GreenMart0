import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/widgets/home_grid.dart';
import 'package:ibrahim/utiles/text_styles.dart';

import '../../shop/data/product_model.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  final int categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    List<ProductModel> filteredProducts = getProductsByCategory(categoryId);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle, style: TextStyles.title2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [Expanded(child: HomeGrid(list: filteredProducts))],
        ),
      ),
    );
  }
}
