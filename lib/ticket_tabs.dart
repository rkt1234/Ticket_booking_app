import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
   AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding:EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
               Airline tickets
                */
            Container(
              child: Center(child: Text(firstTab)),
              width: size.width*0.44,
              padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white

              ),
            ),
            /*
                 hotels
                */
            Container(
              child: Center(child: Text(secondTab)),
              width: size.width*0.44,
              padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent

              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
            color: const Color(0xFFF4F6FD)
        ),
      ),
    );
  }
}
