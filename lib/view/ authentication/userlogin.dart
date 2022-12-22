import 'package:budget/view/%20authentication/register.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool isChecked = false;
  bool securePassword = true;
  final _createUserFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: const Padding(
      //     padding: EdgeInsets.only(left: 5, top: 15),
      //     child: Align(
      //       alignment: Alignment.centerLeft,
      //       child: CircleAvatar(
      //         backgroundImage: NetworkImage(
      //             "https://images-platform.99static.com/OhIwKA0LDfOZN2BAf38MPk_BE4A=/167x154:"
      //                 "1070x1057/500x500/top/smart/99designs-contests-attachments"
      //                 "/90/90571/attachment_90571829"),
      //       ),
      //     ),
      //   ),
      // ),
      body: Form(
        key: _createUserFormKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Create a new account ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  const  Padding(
                      padding:   EdgeInsets.only(left: 10.0),
                      child:   Text(
                        "Full Name",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
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
                    const SizedBox(
                      height: 20,
                    ),
                     const Padding(
                        padding:   EdgeInsets.only(left: 10.0),
                        child: Text(
                        "Email or Phone Number",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
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
                    const Padding(
                       padding:   EdgeInsets.only(left: 10.0),
                       child: Text(
                        "Password",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                    ),
                     ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration:InputDecoration(
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            securePassword = !securePassword;
                          });
                        }, icon: securePassword ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)),
                        contentPadding:const  EdgeInsets.all(10.0),
                        border:const  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      obscureText: securePassword,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please Enter Password!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(
                                  (states) => const Color(0xFFA5A6F6)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'By creating an account , you agree to our\n',
                            style: TextStyle(
                                color:Colors.black38,
                                fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Term and Condition',
                                  style: TextStyle(
                                      color: Color(0xFFA5A6F6),
                                      fontSize: 16)),
                            ],
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        if(_createUserFormKey.currentState!.validate()){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => ))
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
                              "Create Account",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Registers()));
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: "Already have an account?  ",
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:Color(0xFF5D5FEF),
                                      fontSize: 16)),
                            ],
                          ),
                        ),
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
