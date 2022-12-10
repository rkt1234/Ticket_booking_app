import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_layout.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/column_layout.dart';
import 'package:ticket_booking_app/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 Container(

                   height:AppLayout.getHeight(70),
                   width: AppLayout.getHeight(70),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                     image: DecorationImage(
                       image: NetworkImage("https://www.shutterstock.com/image-vector/aircraft-airplane-airline-logo-label-260nw-1144866683.jpg")
                     )
                   ),
                 ),
                 SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Book Tickets", style: Styles.headLineStyle1,),
                     SizedBox(height: 2,),
                     Text("New York", style:TextStyle(
                       fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey.shade500
                     )),
                     SizedBox(height: 8,),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(AppLayout.getHeight(100),),
                         color: const Color(0xFFFEF4F3)
                       ),
                       padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3),vertical
                           : AppLayout.getHeight(3)),
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.all(3),
                             decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                                 color: Color(0xFF526799)
                             ),
                             child: Icon(Icons.circle_rounded,color: Colors.white, size: 15,),
                           ),
                           SizedBox(width
                               :AppLayout.getHeight(10)),
                           Text("Premeium status",style: TextStyle(
                               color: const Color(0xFF526799), fontWeight: FontWeight.w600
                           ),),
                           SizedBox(height: 5,),
                         ],
                       ),
                     ),

                   ],
                 ),
                 const Spacer(),
                 Column(
                   //crossAxisAlignment: ,
                   children: [
                     InkWell(
                       onTap: () {
                         print("You are tapped ");
                       },
                       child: Text(
                         "Edit ",
                         style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),
                       ),
                     )
                   ],
                 ),
               ],
             ),
          SizedBox(height: AppLayout.getHeight(10)),
          Divider(color: Colors.black,),
          SizedBox(height: 15,),
          SizedBox(height: AppLayout.getHeight(10),),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -35,
                top: -35,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(26)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color:Color(0xFF264CD2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.lightbulb,color: Styles.primaryColor,size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(width
                        : 8,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You have got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,color: Colors.white
                          ),
                        ),
                        Text(
                          " You have 95 flights this year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500
                              ,color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: AppLayout.getHeight(25),),
          Text("Accumulated miles",style: Styles.headLineStyle2,),
          SizedBox(height: AppLayout.getHeight(20),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical:AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(15)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 10,
                )
              ]


            ),
            child: Column(
              children: [
                SizedBox(height: AppLayout.getHeight(10),),
                Text("192802",
                style: TextStyle(fontSize: 45,color: Styles.textColor,fontWeight: FontWeight.w600),),
                SizedBox(height: AppLayout.getHeight(10),),
                Row(
                    children: [
                      Text("Miles accrued",style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                      Spacer(),
                      Text("1 August 2023",style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    ],
                ),
                Divider(color: Colors.blueGrey.shade300,),
                SizedBox(height: 8,),
                Row(
                  children: [
                    AppColumnLayout(firstText: "23 042",secondText: "Miles" ,alignment: CrossAxisAlignment.start,isColor:false),
                    Spacer(),
                    AppColumnLayout(firstText: "Airlines CO",secondText: "Received from" ,alignment: CrossAxisAlignment.start,isColor:false),
                  ],
                ),
                SizedBox(height: 12,),
                const AppLayoutBuilderWidget(sections: 12,isColor: false,),
                SizedBox(height: 12,),
                Row(
                  children: [
                    AppColumnLayout(firstText: "24",secondText: "Miles" ,alignment: CrossAxisAlignment.start,isColor:false),
                    Spacer(),
                    AppColumnLayout(firstText: "McDonald's",secondText: "Received from" ,alignment: CrossAxisAlignment.start,isColor:false)

                  ],
                ),
                SizedBox(height: 12,),
                const AppLayoutBuilderWidget(sections: 12,isColor: false,),
                SizedBox(height: 12,),
                Row(
                  children: [
                    AppColumnLayout(firstText: "52 340",secondText: "Miles" ,alignment: CrossAxisAlignment.start,isColor:false),
                    Spacer(),
                    AppColumnLayout(firstText: "Exuma",secondText: "Received from" ,alignment: CrossAxisAlignment.start,isColor:false)

                  ],
                )
              ],
            ),
          ),
          SizedBox(height:AppLayout.getWidth(25)),
          Center(
            child: Text(
              "How to get more miles",
              style:Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500
              )
            ),
          )
        ],
      ),
    );
  }
}
