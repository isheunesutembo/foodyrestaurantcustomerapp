import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:restaurantcustomerapp/categories/all_categories.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';
import 'package:restaurantcustomerapp/constants/uidata.dart';
import 'package:restaurantcustomerapp/controllers/categoriescontroller.dart';
import 'package:restaurantcustomerapp/views/home/widgets/categorywidget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(CategoryController());
    return Container(
      height: 80,
      color: kOffWhite,
      padding:const EdgeInsets.only(left: 12,top:10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          var category=categories[index];
          return CategoryWidget( category: category);
        }),

      ),
    );
  }
}

