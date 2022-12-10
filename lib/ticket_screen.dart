import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_info_list.dart';
import 'package:ticket_booking_app/app_layout.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/column_layout.dart';
import 'package:ticket_booking_app/layout_builder_widget.dart';
import 'package:ticket_booking_app/ticket_tabs.dart';
import 'package:ticket_booking_app/ticket_view.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor:Styles.bgColor ,
        body: Stack(children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
            children: [
              SizedBox(height:40),
               Text("Tickets",style: Styles.headLineStyle1,),
              SizedBox(height:20),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              SizedBox(height:20),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15),right: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor:true,),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                  margin: EdgeInsets.only(left: AppLayout.getHeight(15),right: AppLayout.getHeight(31),),
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10),right: AppLayout.getHeight(30),bottom:AppLayout.getHeight(20) ),
                decoration: BoxDecoration(
                  color: Colors.white,
                // borderRadius: BorderRadius.circular(10)

                ),
                child:Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger",alignment: CrossAxisAlignment.start,
                           isColor:false,),
                        Spacer(),
                        AppColumnLayout(firstText: "5221 345678", secondText: "Passport",alignment: CrossAxisAlignment.end,isColor:false),
                      ],
                    ),
                    SizedBox(height: 20,),
                     AppLayoutBuilderWidget(sections: 15,isColor:false,width: 5,),
                    SizedBox(height: 15,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "0055 444 77147", secondText: "Number of e-ticket",alignment: CrossAxisAlignment.start,
                          isColor:false,),
                        Spacer(),
                        AppColumnLayout(firstText: "B2SG2B", secondText: "Booking code",alignment: CrossAxisAlignment.end,isColor:false),
                      ],
                    ),
                    SizedBox(height: 20,),
                    AppLayoutBuilderWidget(sections: 15,isColor:false,width: 5,),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              children: [
                                Image.network("https://www.shutterstock.com/image-photo/kiev-ukraine-september-30-2017-260nw-740189848.jpg",scale: 10,),
                                Text("   *** 2462",style: Styles.headLineStyle3,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("Payment Method", style:Styles.headLineStyle4,)
                          ],
                        ),
                        Spacer(),
                        AppColumnLayout(firstText: "\$249.99", secondText: "Price",alignment: CrossAxisAlignment.end,
                          isColor:false,),
                      ],
                    ),
                    SizedBox(height: 2,)

                  ],
                )
              ),
              /*
              bar code
               */
              SizedBox(height: 1,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(21),bottomLeft:Radius.circular(21)),
                ),
                //color: Colors.white,
                margin: EdgeInsets.only(left: 15,right: 31,top: 1),
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                      data: "https://github.com/rkt1234",
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15),right: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),

            ],
          ),
          Positioned(
            left: AppLayout.getHeight(20),
            top: AppLayout.getHeight(350),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(40),
            top: AppLayout.getHeight(350),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
       ]
        ),
    );
  }
}
