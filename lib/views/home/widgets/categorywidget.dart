import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantcustomerapp/categories/all_categories.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';
import 'package:restaurantcustomerapp/controllers/categoriescontroller.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.category,
  });


  final  category;

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(CategoryController());
    return GestureDetector(
      onTap: (){
        if(controller.categoryValue==category['_id']){
          controller.updateCategory='';
          controller.updateTitle='';
        }else if(category['value']==['more']){
          
          Get.to(()=>const AllCategories(),
          transition:Transition.fadeIn,
          duration:const Duration(milliseconds: 900)
        );
        }else{
          controller.updateCategory=category['_id'];
          controller.updateTitle=category['title'];
        }
    
      },
      child:Obx(() =>  Container(
        margin:const EdgeInsets.only(right: 5),
        padding:const EdgeInsets.only(top:4),
        width: width*0.19,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:controller.categoryValue==category['_id']? kSecondary:kOffWhite,width:2)
        ),
        child: Column(children: [
          SizedBox(height: 35,
          child: Image.network(category['imageUrl'],fit: BoxFit.contain,),),
          Text(category['title'],style:const TextStyle(fontSize: 12,fontWeight: FontWeight.normal))
        ]),
      
      ),)
    );
  }
}