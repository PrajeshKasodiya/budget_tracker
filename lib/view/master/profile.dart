import 'package:budget/widgets/properties.dart';
import 'package:flutter/material.dart';

var properties = Properties();

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 20, top: 15),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  // SizedBox(width: 3),
                  const Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: properties.icons.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    properties.profileNavigation[index]));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 57,
                                    height: 57,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFDFDFFA),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Center(
                                      child: Icon(properties.icons[index],
                                          size: 27, color: Colors.blueAccent),
                                    ),
                                  ),
                                ),
                                Text(
                                  properties.profileText[index],
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.chevron_right),
                                    color: Colors.blueAccent),
                              ],
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(vertical: 9),
                                color: Colors.black12,
                                width: double.maxFinite,
                                height: 1)
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
