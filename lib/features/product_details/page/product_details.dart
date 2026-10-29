import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/product_model.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:ibrahim/widgets/main_button.dart';
import 'package:gap/gap.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    double unitPrice = double.tryParse(widget.product.price) ?? 0.0;
    double totalPrice = unitPrice * quantity;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.blackColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [Icon(Icons.upload), SizedBox(width: 10)],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          height: 65,
          child: MainButton(title: "Add To Cart", onTap: () {}),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 380,
                color: AppColors.whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Hero(
                        tag: widget.product.heroTag,
                        child: Image.asset(widget.product.imagePath),
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.title,
                          style: TextStyles.subtitle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Icon(Icons.favorite_border),
                      ],
                    ),
                    Gap(10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.product.unit,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (quantity > 1) {
                                        quantity--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                const SizedBox(width: 5),

                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFB3ABAB),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "$quantity",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),

                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "\$${totalPrice.toStringAsFixed(2)}",
                          style: TextStyles.title1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(15),
              Divider(),
              Gap(15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Detail",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Gap(15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.product.description,
                  style: TextStyles.caption2.copyWith(color: Colors.grey),
                ),
              ),
              Gap(15),
              Divider(),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nutritions",
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Icon(Icons.arrow_right),
                ],
              ),
              Gap(15),
              Divider(),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Review",
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(children: [Text("⭐️⭐️⭐️⭐️⭐️"), Icon(Icons.arrow_right)]),
                ],
              ),
              Gap(15),
            ],
          ),
        ),
      ),
    );
  }
}
