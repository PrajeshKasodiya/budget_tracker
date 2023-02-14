import 'package:budget/controller/Provider/Provider_helper/authentication_provider.dart';
import 'package:budget/controller/Provider/Provider_screen/sign_in.dart';
import 'package:budget/widgets/constent/constant.dart';
import 'package:flutter/material.dart';
import 'package:budget/main.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);



  final createUserFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: createUserFormKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
                    AppContent.twentyHeightSizebox,
                    // email or phone number ---------------------------------
                    Padding(
                      padding: properties.inlinePadding.padding,
                      child: const Text(
                        "Email or Phone Number",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    AppContent.tenHeightSizebox,
                    TextFormField(
                      controller: provider.userEmailController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please Enter Email";
                        }
                        return null;
                      },
                    ),
                    AppContent.tenHeightSizebox,
                    // password ----------------------------------------------
                    Padding(
                      padding: properties.inlinePadding.padding,
                      child: const Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    AppContent.tenHeightSizebox,
                    TextFormField(
                      controller: provider.userPasswordController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please Enter Password!";
                        }

                        return null;
                      },
                    ),
                    AppContent.tenHeightSizebox,
                    // confirm password --------------------------------------
                    Padding(
                      padding: properties.inlinePadding.padding,
                      child: const Text(
                        "Confirm Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    AppContent.tenHeightSizebox,
                    TextFormField(
                      controller: provider.userConfirmPasswordController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please Enter Your Confirm Password ";
                        } else if (provider.userPasswordController.text !=
                                provider.userConfirmPasswordController.text &&
                            provider.userPasswordController.text.isNotEmpty) {
                          return "password is not match!";
                        }
                        return null;
                      },
                    ),
                    AppContent.tenHeightSizebox,
                    // check box part-----------------------------------------
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(
                              (states) => const Color(0xFFA5A6F6)),
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'By creating an account , you agree to our\n',
                            style:
                                TextStyle(color: Colors.black38, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Term and Condition',
                                  style: TextStyle(
                                      color: Color(0xFFA5A6F6), fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppContent.tenHeightSizebox,
                    // button part -------------------------------------------
                    InkWell(
                      onTap: () {
                        if (createUserFormKey.currentState!.validate()) {
                          provider.firebaseSignUp(
                              provider.userEmailController.text,
                              provider.userPasswordController.text,
                              provider.userConfirmPasswordController.text,
                              context);
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
                    AppContent.twentyHeightSizebox,
                    // navigate to register page------------------------------
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: "Already have an account?  ",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF5D5FEF),
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
