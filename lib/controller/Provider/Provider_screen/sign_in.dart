import 'package:budget/controller/Provider/Provider_helper/authentication_provider.dart';
import 'package:budget/view/%20authentication/forgot_password.dart';
import 'package:budget/controller/Provider/Provider_screen/sign_up.dart';
import 'package:budget/widgets/constent/colors.dart';
import 'package:budget/widgets/constent/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final registerFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: lightColor,
      body: Form(
        key: registerFormKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
                  AppContent.twentyHeightSizebox,
                  const Text(
                    "Email or Phone Number",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
                        return "Please Enter Email or Number ";
                      }
                      return null;
                    },
                  ),
                  AppContent.tenHeightSizebox,
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AppContent.tenHeightSizebox,
                  TextFormField(
                    controller: provider.userPasswordController,
                    decoration: const InputDecoration(
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //
                      //     },
                      //     icon: securePassword
                      //         ? const Icon(Icons.visibility_off)
                      //         : const Icon(Icons.visibility)),
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
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(
                            (states) => const Color(0xFFA5A6F6)),
                        value: true,
                        onChanged: (bool? value) {},
                      ),
                      const Text(
                        "Remember Me",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      if (registerFormKey.currentState!.validate()) {
                        provider.firebaseSignIn(provider.userEmailController.text,
                            provider.userPasswordController.text, context);
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
                  AppContent.twentyHeightSizebox,
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: const Center(
                      child: Text(
                        "Forget the password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5D5FEF)),
                      ),
                    ),
                  ),
                  AppContent.tenHeightSizebox,
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: "Don't have an account?  ",
                          style: TextStyle(color: Colors.black38, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5D5FEF),
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
