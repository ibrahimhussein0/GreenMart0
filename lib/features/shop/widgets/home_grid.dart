import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/product_model.dart';
import 'package:ibrahim/features/shop/widgets/productCard.dart';


class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, required this.list});
  final List<ProductModel> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        var product = list[index];
        return ProductItemCard(product: product);
      },
      itemCount: list.length,
    );
  }
}
