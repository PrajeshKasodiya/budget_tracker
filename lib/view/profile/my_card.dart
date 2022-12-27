import 'package:budget/view/profile/add_card.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 20, top: 55),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_rounded)),
                // SizedBox(width: 3),
                const Text(
                  "My Card",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                  margin:const EdgeInsets.symmetric(horizontal: 25),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:  Border.all(
                      color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const[
                      BoxShadow(
                        color: Color(0xFFF3F5F9),
                        blurRadius: 10,
                        offset: Offset(0,6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("State Bank Of India",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                      const  Padding(padding: EdgeInsets.symmetric(vertical: 13)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                             Text("Account Number ",style: TextStyle(fontSize: 15 )),
                          Text(" 8755595749579",style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                      const  Padding(padding: EdgeInsets.symmetric(vertical: 11)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text("IFSC Number",style: TextStyle(fontSize: 15 )),
                          Text("SBIN0017318",style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                      // SizedBox(height: 10),
                      // Text("State Bank Of India"),
                    ],
                  ),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                  margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:  Border.all(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const[
                      BoxShadow(
                        color: Color(0xFFF3F5F9),
                        blurRadius: 10,
                        offset: Offset(0,6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("State Bank Of India",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                      const  Padding(padding: EdgeInsets.symmetric(vertical: 13)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text("Account Number ",style: TextStyle(fontSize: 15 )),
                          Text(" 8755595749579",style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                      const  Padding(padding: EdgeInsets.symmetric(vertical: 11)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text("IFSC Number",style: TextStyle(fontSize: 15 )),
                          Text("SBIN0017318",style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                      // SizedBox(height: 10),
                      // Text("State Bank Of India"),
                    ],
                  ),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                  margin:const EdgeInsets.symmetric(horizontal: 25),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:  Border.all(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const[
                      BoxShadow(
                        color: Color(0xFFF3F5F9),
                        blurRadius: 10,
                        offset: Offset(0,6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("State Bank Of India",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                      const  Padding(padding: EdgeInsets.symmetric(vertical: 13)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text("Account Number ",style: TextStyle(fontSize: 15 )),
                          Text(" 8755595749579",style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                      const  Padding(padding: EdgeInsets.symmetric(vertical: 11)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text("IFSC Number",style: TextStyle(fontSize: 15 )),
                          Text("SBIN0017318",style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                      // SizedBox(height: 10),
                      // Text("State Bank Of India"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const AddCard()));
            },
            child: Container(
              margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 35),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFA5A6F6),
              ),
              width: double.maxFinite,
              height: 50,
              child: const Center(
                  child: Text(
                    "Add Card",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
