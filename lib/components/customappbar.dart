import 'package:flutter/material.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: width,
      color: kOffWhite,
      child: Container(
        margin:const EdgeInsets.only(top: 20),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(children: [
                CircleAvatar(
                  backgroundColor: kSecondary,
                  radius: 20,
                ),
                 SizedBox(width: 40,),
                Column(
                  children: [
                     SizedBox(height: 23,),
                    Text("Deliver to",style: TextStyle(fontSize: 13,color: kSecondary,fontWeight: FontWeight.w600),),
                    Text("976 Seigneury Road ",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 11,color: kGrayLight,fontWeight: FontWeight.normal),)
                  ],
                )
              ]),
              Text(getTimeOfTheDay(),style:const TextStyle(fontSize: 35),)
            ],
          ),
        ),
      ),
    );
  }
 
}
 String getTimeOfTheDay(){
  DateTime now=DateTime.now();
  int hour=now.hour;

  if(hour>=0&&hour<20){
    return '☀️';
  }else if(hour>=12&&hour<16){
    return '⛅';
  }else{
    return '🌙';
  }
}

