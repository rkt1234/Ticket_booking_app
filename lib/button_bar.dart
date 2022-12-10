import 'package:flutter/material.dart';
import 'package:ticket_booking_app/home_screen.dart';
import 'package:ticket_booking_app/profile_screen.dart';
import 'package:ticket_booking_app/search_screen.dart';
import 'package:ticket_booking_app/ticket_screen.dart';
class BottomBar  extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedindex=0;
  static final List<Widget>_widgetOptions=<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  void tapped(int index)
  {
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //       "Airplane Ticket Booking "),
      // ),
      body: Center(
        child: _widgetOptions[selectedindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: tapped,
          elevation: 10,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]
      ),
    );
  }
}
