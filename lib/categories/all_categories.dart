import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:restaurantcustomerapp/common/background_container.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';
import 'package:restaurantcustomerapp/constants/uidata.dart';
import 'package:restaurantcustomerapp/views/home/widgets/categorywidget.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: kOffWhite,
      title:const Text("Categories",style: TextStyle(fontSize: 12,color: kGray,fontWeight: FontWeight.w600),),),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding:const EdgeInsets.only(left: 12,top: 10),
          height: height,
          child:ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(categories.length, (index) {
            var category=categories[index];
            return ListTile(
              onTap: (){
                Get.to(()=>CategoryPage(),
                transition: Transition.fadeIn,
                duration: Duration(milliseconds: 900));
              },
              leading: CircleAvatar(
                backgroundColor: kGray,
                radius: 18.r,
                child: Image.network(category['imageUrl'],fit: BoxFit.contain,),
              ),
              title: Text(category['title'],style:const TextStyle(fontSize: 12,color: kGray,fontWeight: FontWeight.normal),),
              trailing:const   Icon(Icons.arrow_forward_ios_rounded,color: kGray,size: 15,),
            );
          }),
        
        ), 
        ),
      ),
    );
  }
}