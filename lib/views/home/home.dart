import 'package:flutter/material.dart';
import 'package:restaurantcustomerapp/components/customappbar.dart';
import 'package:restaurantcustomerapp/components/customcontainer.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';
import 'package:restaurantcustomerapp/views/home/widgets/categorylist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimary,
      appBar:const PreferredSize(preferredSize: Size.fromHeight(130) , child: CustomAppBar()),
      body:SingleChildScrollView(
        child: Column(children: [
          CategoryList()
        ]),
      ),
    );
  }
}