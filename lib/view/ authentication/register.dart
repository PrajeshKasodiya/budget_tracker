import 'package:budget/view/%20authentication/userlogin.dart';
import 'package:flutter/material.dart';

class Registers extends StatefulWidget {
  const Registers({Key? key}) : super(key: key);

  @override
  State<Registers> createState() => _RegistersState();
}

class _RegistersState extends State<Registers> {
  bool isChecked = false;
  bool securePassword = true;
  final _registerFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Form(
        key: _registerFormKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                RichText(
                  text: const TextSpan(
                    text: 'Sign in to ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Budget Tracker',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontSize: 24)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Email or Phone Number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
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
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
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
                  height: 10,
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
                    const Text(
                      "Remember Me",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    if(_registerFormKey.currentState!.validate()){
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
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Forget the password?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D5FEF)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UserLogin()));
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign up',
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
