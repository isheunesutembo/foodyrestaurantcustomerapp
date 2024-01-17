import 'package:flutter/material.dart';
import 'package:restaurantcustomerapp/components/customcontainer.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize:const Size.fromHeight(130) , child: Container(height: 130,)),
      body: CustomContainer(containerContent: Container()),
    );
  }
}