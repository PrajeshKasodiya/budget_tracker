import 'package:budget/widgets/properties.dart';
import 'package:flutter/material.dart';

var properties = Properties();

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 28),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  // SizedBox(width: 3),
                  const Text(
                    "Notification",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search_outlined))
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                //for today
                Padding(
                  padding:properties.outsidePadding.padding,
                  child: const Text(
                    "Today",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),

                //for yesterday
                const SizedBox(height: 20),
                Padding(
                  padding:properties.outsidePadding.padding,
                  child: const Text(
                    "yesterday",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),

                //for This Weekend
                const SizedBox(height: 10),
                Padding(
                  padding:properties.outsidePadding.padding,
                  child: const Text(
                    "This Weekend",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                ListTile(
                  leading:const CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQ0OgNQ1CoeyBTAIQ7-q1fhG33x-PoJ6lA&usqp=CAU"),
                  ),
                  title: const Text(
                      "Dummy Title  some extra content when you are shown in this widget"),
                  subtitle: const Text(
                    " 10 : 10 AM",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onTap: () {
                    debugPrint("ListTile Tapped");
                  },
                ),
                Container(height: 0.3,color: Colors.black38,margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
