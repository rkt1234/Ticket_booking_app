import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/app_layout.dart';
import 'package:ticket_booking_app/double_text_widget.dart';
import 'package:ticket_booking_app/icon_text_widget.dart';
import 'package:ticket_booking_app/ticket_tabs.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding:EdgeInsets.symmetric(horizontal:AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
           SizedBox(height:AppLayout.getHeight(40)),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
          SizedBox(height:AppLayout.getHeight(20)),
          AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels",),
           SizedBox(height:AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 15),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 25,),
          Container(
              padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(12),horizontal:AppLayout.getWidth(12) ),
              decoration: BoxDecoration(
                color:Colors.blue[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Find Tickets",style: Styles.textStyle.copyWith(color:Colors.white, fontSize: 15)))
          ),
          SizedBox(height: 40,),
          AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          SizedBox(height: 20,),
          Row(

            children: [
              Container(
                height: AppLayout.getHeight(460),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )

                  ],
                ),
                child: Column(
                  children: [
                    Container(

                      height: AppLayout.getHeight(198),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit:BoxFit.cover,
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYEnvhCkTRKaSmpaVBRCz_vl1jR1Bbgu5Lb6ksObfp&s")
                        )
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      "20% discount on the early booking of this flight . Don't miss out this chance",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              SizedBox(width: 15,),
              Column(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Stack(
                   children: [
                     Container(

                       width: size.width*0.44,
                       height: AppLayout.getHeight(210),
                       decoration: BoxDecoration(
                           color:Color(0xFF3ABBBB),
                           borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                       ),
                       padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Discount\nfor survey",style:Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color:Colors.white )),
                           SizedBox(height: AppLayout.getHeight(10),),
                           Text("Take the survey about our services and get discount",style:Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color:Colors.white, fontSize: 18 )),

                         ],
                       ),
                     ),
                     Positioned(
                       right:-45,
                       top: -40,
                       child:Container(
                         padding: EdgeInsets.all(AppLayout.getHeight(30)),
                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(width: 18, color: Color(0xFF189999)),
                             color: Colors.transparent
                         ),
                       )
                     )
                   ],
                 ),
                  SizedBox(height: 40,),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding : EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take Love ",style: Styles.headLineStyle2.copyWith(color:Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                        ,SizedBox(height: 5,),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:'😍',
                                style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                  text:'😍',
                                  style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                  text:'😍',
                                  style: TextStyle(fontSize: 38)
                              )

                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
