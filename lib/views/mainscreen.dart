import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';
import 'package:restaurantcustomerapp/controllers/tabindexcontroller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:restaurantcustomerapp/views/cart/cart_page.dart';
import 'package:restaurantcustomerapp/views/home/home.dart';
import 'package:restaurantcustomerapp/views/profile/profile_page.dart';
import 'package:restaurantcustomerapp/views/search/search_page.dart';
class MainScreen extends StatelessWidget {

 
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
     List<Widget>pagesList=[
      HomePage(),
      SearchPage(),
      CartPage(),
      ProfilePage()
     ];
    final controller=Get.put(TabIndexController());
    return Obx(() => Scaffold(
      body: Stack(children: [
       pagesList[controller.tabIndex],
        Align(
          alignment: Alignment.bottomCenter,
          child: Theme(data: Theme.of(context).copyWith(canvasColor: kPrimary), child: 
          BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedIconTheme:const IconThemeData(color: Colors.black38),
            selectedIconTheme:const IconThemeData(color: kSecondary),
            onTap: (value){
             controller.setTabIndex=value;
            },
            currentIndex: controller.tabIndex,
          items: [
          BottomNavigationBarItem(icon:controller.tabIndex==0? Icon(AntDesign.appstore1):Icon(AntDesign.appstore_o),label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          const BottomNavigationBarItem(icon: Badge(label: Text('1'),child: Icon(FontAwesome.opencart)),label: 'Cart'),
          BottomNavigationBarItem(icon:controller.tabIndex==3?const Icon(FontAwesome.user_circle):const Icon(FontAwesome.user_circle_o),label: 'Profile')

          ],)),
        )
      ]),
    ));
  }
}