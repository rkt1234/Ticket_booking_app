import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_layout.dart';
import 'package:ticket_booking_app/app_styles.dart';
class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(12),horizontal:AppLayout.getWidth(12) ),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(

          children: [
             Icon(icon,color:Color(0xFFBFC2DF),),
            SizedBox(width:20),
            Text(text,style: Styles.textStyle)

          ],
        )
    );
  }
}
