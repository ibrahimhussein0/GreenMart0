import 'package:flutter/material.dart';
import 'package:ibrahim/features/shop/data/dummy_data.dart';
import 'package:ibrahim/features/shop/widgets/home_grid.dart';
import 'package:ibrahim/widgets/custom_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Customfield(hintText: "Cola", prefixIcon: Icons.search),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [Expanded(child: HomeGrid(list: colaList))],
        ),
      ),
    );
  }
}
