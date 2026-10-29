import 'dummy_data.dart';

class ProductModel {
  final int id;
  final String title;
  final String price;
  final String unit;
  final String imagePath;
  final String description;
  final String heroTag;
  final int categoryId;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.unit,
    required this.description,
    required this.heroTag,
    required this.categoryId,
  });
}

List<ProductModel> getProductsByCategory(int categoryId) {
  return allProductsList
      .where((product) => product.categoryId == categoryId)
      .toList();
}
