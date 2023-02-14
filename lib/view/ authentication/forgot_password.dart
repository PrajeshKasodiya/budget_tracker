import 'package:budget/controller/Provider/Provider_helper/authentication_provider.dart';
import 'package:budget/view/%20authentication/newpassword.dart';
import 'package:budget/widgets/constent/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  final _forgetFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthenticationProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
        title: const Text("Forgot Password",
            style: TextStyle(color: Colors.white)),
        elevation: 0,
        backgroundColor: const Color(0xFFA5A6F6),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _forgetFormKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                    AppContent.twentyHeightSizebox,
                    const Text(
                      "Please enter your email,we will confirm the password \nchange via email",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                    AppContent.twentyHeightSizebox,
                    Padding(
                      padding: properties.inlinePadding.padding,
                      child: const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
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
                    InkWell(
                      onTap: () {
                        if (_forgetFormKey.currentState!.validate()) {
                           provider.forgetPassword(provider.userEmailController.text, context);
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
