import 'package:budget/widgets/properties.dart';
import 'package:flutter/material.dart';

var properties = Properties();
class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
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
                  "Add Card",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: properties.outsidePadding.padding,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 199,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color:const Color(0xFFE5E7F6)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Icon(Icons.camera_alt,color: Colors.blueAccent),
                        SizedBox(height: 15),
                        Text("Scan Identity Card",style: TextStyle(color: Colors.black54))
                      ],
                    ),
                  ),
                  //idCard number
                  const SizedBox(height: 25),
                  Padding(
                    padding: properties.inlinePadding.padding,
                    child:const Text(
                      "Id Card Number",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black54),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please Enter Name ";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  // country
                  Padding(
                    padding: properties.inlinePadding.padding,
                    child:const Text(
                      "Country / Region",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black54),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please Enter Name ";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  //Expired date
                  Padding(
                    padding: properties.inlinePadding.padding,
                    child:const Text(
                      "Expired Date",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black54),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please Enter Name ";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const AddCard()));
            },
            child: Container(
              margin:const EdgeInsets.symmetric( vertical: 35,horizontal: 25),
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
