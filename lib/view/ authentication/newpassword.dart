import 'package:budget/view/%20authentication/register.dart';
import 'package:budget/view/%20authentication/success.dart';
import 'package:budget/widgets/properties.dart';
import 'package:flutter/material.dart';

var properties = Properties();
class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
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
              padding:properties.outsidePadding.padding,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'New Password ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                      Padding(
                      padding:properties.inlinePadding.padding,
                      child:const Text(
                        "New Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
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
                          return "Please Enter Password!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                      Padding(
                      padding:properties.inlinePadding.padding,
                      child:const Text(
                        "Retype new Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                securePassword = !securePassword;
                              });
                            },
                            icon: securePassword
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility)),
                        contentPadding: const EdgeInsets.all(10.0),
                        border: const OutlineInputBorder(
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        if (_registerFormKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Success()));
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
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
