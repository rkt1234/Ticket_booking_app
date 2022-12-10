import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_layout.dart';
import 'package:ticket_booking_app/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel price is ${hotel['price']}");
    final size =AppLayout.getSize(context);
    return Container(
      width:size.width*0.6,
      height:350,
      padding:const EdgeInsets.symmetric(horizontal:15,vertical:17),
      margin: const EdgeInsets.only(right:20,top:10),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ],
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          height:180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(10),
                image:DecorationImage(
                 image:NetworkImage(
                   "${hotel['image']}",
                 ),

                )
            ),
    ),
          const SizedBox(height:15),
          Text(
              "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color:Styles.kakicolor),
          ),
          const SizedBox(height:10),
          Text(""
              "${hotel['destination']}",
            style: Styles.headLineStyle2.copyWith(color:Colors.white),
          ),
          const SizedBox(height:10),
          Text(""
              "\$${hotel['price']}/night",
            style: Styles.headLineStyle2.copyWith(color:Styles.kakicolor),
          ),
        ],
      )
    );
  }
}
