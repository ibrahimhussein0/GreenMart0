import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/dummy_data.dart';
import 'package:ibrahim/utiles/app_colors.dart';
import 'package:ibrahim/utiles/text_styles.dart';
import 'package:ibrahim/widgets/main_button.dart';
import '../widgets/bottonSheet.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        elevation: 0,
        title: Text(
          "My Cart",
          style: TextStyles.headline2.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: offersList.length,
                separatorBuilder: (context, int index) => Divider(
                  height: 25,
                  thickness: 1,
                  color: AppColors.dividerColor,
                ),
                itemBuilder: (context, index) {
                  var product = offersList[index];
                  return CartItemCard(product: product);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: SizedBox(
                width: double.infinity,
                height: 58,
                child: MainButton(
                  title: "Go To CheckOut",
                  onTap: () {
                    showCheckoutBottomSheet(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
