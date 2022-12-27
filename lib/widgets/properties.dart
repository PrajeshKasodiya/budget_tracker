import 'package:flutter/material.dart';

class Properties{
  // paddings
  var outsidePadding =const Padding(padding: EdgeInsets.symmetric(horizontal: 25));
  var inlinePadding = const Padding(padding: EdgeInsets.only(left:10));

  // BottomNavigationBar colors
  var iconColor = Colors.black54;

  //profilePage icon
  final  List<IconData> icons = [
    Icons.person,
    Icons.notifications,
    Icons.credit_card,
    Icons.lock,
    Icons.currency_bitcoin,
    Icons.keyboard_double_arrow_right,
    Icons.logout
  ];
  final List<String> profileText = [
    "Account",
    "Notification",
    "My Card",
    "Security",
    "Currency",
    "Services",
    "logout"
  ];
}
