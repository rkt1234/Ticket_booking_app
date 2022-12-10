import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/double_text_widget.dart';
import 'package:ticket_booking_app/hotel_screen.dart';
import 'package:ticket_booking_app/ticket_view.dart';
import 'package:ticket_booking_app/app_info_list.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left:20, right:20),
            child:Column(
              children: [
                SizedBox(height:40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                            "Good morning", style:Styles.headLineStyle3,
                        ),
                         SizedBox(height:5),
                        Text(
                            "Book Tickets",style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit:BoxFit.cover,
                          image: NetworkImage("https://www.shutterstock.com/image-vector/aircraft-airplane-airline-logo-label-260nw-1144866683.jpg")
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(height:25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding:const EdgeInsets.symmetric(horizontal:12, vertical:12),
                  child: Row(
                    children: [
                      const Icon(Icons.search,color: Colors.yellow,),
                      Text(
                        "  Search",
                          style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                SizedBox(height:40),
                AppDoubleTextWidget(bigText: "Upcoming Flight", smallText: "View all")
              ],
            ),
          ),
          SizedBox(height:20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left:20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList()
            )
          ),
          const SizedBox(height:15),
          Container(
            padding:const EdgeInsets.symmetric(horizontal:20),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: "View all")
          ),
          SizedBox(height: 15,),
           SingleChildScrollView(
             scrollDirection:Axis.horizontal ,
               padding:const EdgeInsets.only(left:20),
               child:Row(
                children:hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList()
           ),

      ),
    ]
      )
    );
  }
}
