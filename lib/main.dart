import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/button_bar.dart';
import 'package:flutter/material.dart';
void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "flutter demo",
  theme: ThemeData(
    primaryColor:primary,
  ),
  home: BottomBar(),
)
// return
);
