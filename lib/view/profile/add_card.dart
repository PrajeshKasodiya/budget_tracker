import 'package:budget/widgets/properties.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

var properties = Properties();

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final idCardNumberController = TextEditingController();
  final countryController = TextEditingController();
  final acNumberController = TextEditingController();
  final ifscNumberController = TextEditingController();
  final expiredNumberController = TextEditingController();
  final _addCardFormKey = GlobalKey<FormState>();
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Add Card",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFA5A6F6),
        elevation: 0,
      ),
      body: Form(
        key: _addCardFormKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          shrinkWrap: true,
          children: [
            //idCard number
            const SizedBox(height: 55),
            Padding(
              padding: properties.inlinePadding.padding,
              child: const Text(
                "Id Card Number",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: idCardNumberController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter Card Number";
                }
                return null;
              },
            ),
            const SizedBox(height: 25),
            // country
            Padding(
              padding: properties.inlinePadding.padding,
              child: const Text(
                "Country / Region",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: countryController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter Country Name";
                }
                return null;
              },
            ),
            const SizedBox(height: 25),
            //Expired date
            Padding(
              padding: properties.inlinePadding.padding,
              child: const Text(
                "Account Number",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: acNumberController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter Account Number ";
                }
                return null;
              },
            ),
            const SizedBox(height: 25),
            Padding(
              padding: properties.inlinePadding.padding,
              child: const Text(
                "IFSC code",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: ifscNumberController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter  IFSC Code ";
                }
                return null;
              },
            ),
            const SizedBox(height: 25),
            Padding(
              padding: properties.inlinePadding.padding,
              child: const Text(
                "Expired Date",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: expiredNumberController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter Expired date ";
                }
                return null;
              },
            ),

            InkWell(
              onTap: () async {
                if (_addCardFormKey.currentState!.validate()) {
                  try {
                   await FirebaseFirestore.instance.collection("Account").add({
                      "userId": userId?.uid,
                      "CardNumber": idCardNumberController.text  ,
                      "CountryName": countryController.text ,
                      "AccountNumber": acNumberController.text,
                      "IFSCNumber": ifscNumberController.text  ,
                      "ExpiredDate": expiredNumberController.text ,
                    });
                  } catch (e) {
                    print("Error $e");
                  }
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const AddCard()));
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 35),
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
      ),
    );
  }
}
