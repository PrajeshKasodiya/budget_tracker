import 'dart:ffi';

import 'package:budget/view/profile/add_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? userId =  FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "My Card",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFA5A6F6),
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 200,
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("Account")
                  .where("userId", isEqualTo: userId?.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                        child: Text(
                      "${snapshot.error} occurred",
                      style: const TextStyle(fontSize: 18),
                    ));
                  }else if(snapshot.connectionState == ConnectionState.waiting){
                  return  const Center(child: CircularProgressIndicator());
                  }
                  else if (snapshot.hasData) {
                    final data = snapshot.data;
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                snapshot.data!.docs[index]['CountryName'],
                                style: const TextStyle(fontSize: 18),
                              )
                            ],
                          );
                        });
                  }
                  return  Container();

              },
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddCard()));
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
          )
        ],
      ),

    );
  }
}
