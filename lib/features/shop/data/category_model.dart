import 'package:flutter/animation.dart';
import 'package:ibrahim/constants/app_assets.dart';

class CategoryModel {
  final int id;
  final String title;
  final String image;
  final Color color;
  final Color borderColor;

  CategoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
    required this.borderColor,
  });
}

var categoriesList = [
  CategoryModel(
    id: 1,
    title: "Frash Fruits & Vegetable",
    image: AppAssets.fruitsAndVegi,
    color: Color(0x1B45B11A),
    borderColor: Color(0xF81AA42C),
  ),
  CategoryModel(
    id: 2,
    title: "Cooking Oil & Ghee",
    image: AppAssets.cookingOil,
    color: Color(0x1AA662BC),
    borderColor: Color(0xF8D135C9),
  ),
  CategoryModel(
    id: 3,
    title: "Meat & Fish",
    image: AppAssets.meatAndFish,
    color: Color(0x1FF4E9B3),
    borderColor: Color(0xF7A59340),
  ),
  CategoryModel(
    id: 4,
    title: "Bakery & Snacks",
    image: AppAssets.bakeryAndSnacks,
    color: Color(0x1BB78FC1),
    borderColor: Color(0xF7814B8E),
  ),
  CategoryModel(
    id: 5,
    title: "Dairy & Eggs",
    image: AppAssets.dairyAndEggs,
    color: Color(0x0f7e8fcf),
    borderColor: Color(0xF74068A5),
  ),
  CategoryModel(
    id: 6,
    title: "Beverages",
    image: AppAssets.drinks,
    color: Color(0x0fc15d6f),
    borderColor: Color(0xF7802833),
  ),
  CategoryModel(
    id: 7,
    title: "Frash Fruits & Vegetable",
    image: AppAssets.fruitsAndVegi,
    color: Color(0x17B1751A),
    borderColor: Color(0xF8A44C1A),
  ),
  CategoryModel(
    id: 8,
    title: "Cooking Oil & Ghee",
    image: AppAssets.cookingOil,
    color: Color(0x18F671F6),
    borderColor: Color(0xF8D135C9),
  ),
  CategoryModel(
    id: 9,
    title: "Meat & Fish",
    image: AppAssets.meatAndFish,
    color: Color(0x1FF4E9B3),
    borderColor: Color(0xF7A59340),
  ),
  CategoryModel(
    id: 10,
    title: "Bakery & Snacks",
    image: AppAssets.bakeryAndSnacks,
    color: Color(0x1DB78FC1),
    borderColor: Color(0xF7814B8E),
  ),
];
