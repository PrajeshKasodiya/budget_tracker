import 'package:budget/view/master/home.dart';
import 'package:budget/view/master/notification.dart';
import 'package:budget/view/master/profile.dart';
import 'package:budget/widgets/properties.dart';
import 'package:flutter/material.dart';


class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int currentTab = 0;
  List<Widget> body = [const HomePge(),const NotificationPage(),const NotificationPage(),const NotificationPage(),const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       bottomNavigationBar: BottomNavigationBar(
         elevation: 0,
         type: BottomNavigationBarType.fixed, // Fixed
         backgroundColor: Colors.white,
         selectedItemColor: const Color(0xFF5D5FEF),
         unselectedItemColor: Colors.black54,
         iconSize: 22,
         onTap: ((value) {
           setState(() {
             currentTab = value;
           });
         }),
         currentIndex: currentTab,
         items:const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home ),label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.insert_chart ),label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.add_box ),label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.notifications ),label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: " "),
         ],
       ),
      body: body.elementAt(currentTab),
    );
  }
}
