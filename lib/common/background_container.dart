import 'package:flutter/material.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const BackgroundContainer({super.key,required this.child,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(20),
           topRight: Radius.circular(20)
        ),
        image: DecorationImage(image:AssetImage("assets/images/restaurant_bk.png"),
        fit: BoxFit.cover,
        opacity: .7),
        
      ),
      child: child,
    );
  }
}