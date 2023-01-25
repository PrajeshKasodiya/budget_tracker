import 'dart:convert';

import 'package:budget/controller/services.dart';
import 'package:budget/main.dart';
import 'package:flutter/material.dart';

// home widget
class HomePge extends StatefulWidget {
  const HomePge({Key? key}) : super(key: key);

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  final _userService = UserServices();

  @override
  void initState() {
    getAllUserDetails();
    super.initState();
  }

  getAllUserDetails() async {
    final users = await _userService.readUser();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              Padding(
                padding:const EdgeInsets.only(top: 10,left: 20 ,right: 6,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const  Text("Good Morning, Prajesh!",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black87),),
                    IconButton(onPressed: (){}, icon:const Icon(Icons.refresh_sharp))
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 199,
                margin:const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color:const Color(0xFFE5E7F6)
                ),
                child: Center(child: Text("Emails = ${user.email}")),

              ),
              Padding(
                padding:const EdgeInsets.only(left: 20,right :20,top: 20 ,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Text("Upcoming bill",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black54)),
                    Text("See All",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.blueAccent
                    ))
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 35,
                      shrinkWrap: true,
                      // padding: EdgeInsets.only(),
                      itemBuilder:  (BuildContext context, int index){
                        return Container(
                          margin:const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      margin:const EdgeInsets.only(right: 10),
                                      width: 70,
                                      height: 70,
                                      decoration:const BoxDecoration(
                                          color:Color(0xFFDFDFFA),
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      child:const Center(
                                        child: Icon(Icons.account_balance,size: 30,color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:const [
                                      Text("Market Bill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                                      SizedBox(height: 10),
                                      Text("December 28, 2021",style: TextStyle(fontSize: 15,color: Colors.black54)),
                                    ],
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: OutlinedButton(
                                        onPressed: (){
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const UserLogin()));
                                        },
                                        style:  OutlinedButton.styleFrom(
                                            side:const BorderSide(color: Colors.blueAccent)
                                        ), child:const Padding(
                                      padding:   EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                                      child:    Text("Play",style: TextStyle(color: Colors.blueAccent,fontSize: 17),),
                                    )),
                                  ),

                                ],
                              ),
                              Container(margin:const EdgeInsets.only(top:5),color: Colors.black12,width: double.maxFinite,height: 1)
                            ],
                          ),
                        );
                      }))

            ],
          ),
        ),
      ),
    );
  }
}
