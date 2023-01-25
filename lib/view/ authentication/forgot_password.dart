import 'package:budget/view/%20authentication/newpassword.dart';
import 'package:budget/view/%20authentication/register.dart';
import 'package:budget/view/%20authentication/success.dart';
import 'package:budget/widgets/properties.dart';
import 'package:flutter/material.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _forgetFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton( onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_outlined,color: Colors.black,),),
          elevation: 0,
          backgroundColor: Colors.white
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _forgetFormKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: properties.outsidePadding.padding,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Forgot Password ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 24),

                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Please enter your email,we will confirm the password \nchange via email",
                      style: TextStyle(fontSize: 16,color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                      Padding(
                      padding:properties.inlinePadding.padding,
                      child: const Text(
                        "Email",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
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
                          return "Please Enter Email or Number ";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    InkWell(
                      onTap: (){
                        if(_forgetFormKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const NewPassword()));
                        }

                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xFFA5A6F6),
                        ),
                        width: double.maxFinite,
                        height: 50,
                        child: const Center(
                            child: Text(
                              "Confirm",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ),
                    ),


                  ]),
            ),
          ),
        ),
      ),
    );
  }
}



