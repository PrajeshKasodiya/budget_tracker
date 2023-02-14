import 'package:budget/widgets/Loader/flutter_overlay_loader.dart';
import 'package:budget/widgets/constent/constant.dart';
import 'package:budget/controller/Provider/Provider_screen/sign_in.dart';
import 'package:budget/controller/Provider/Provider_screen/sign_up.dart';
import 'package:budget/widgets/constent/image.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration:   BoxDecoration(
        image: DecorationImage(
            image: welcomeScreenBg, fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xff892BE2).withOpacity(0.18),
              const Color(0xff3C2BE2).withOpacity(0.45)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 380,
                  height: 50,
                  child: Text(
                   appContent.welcome,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  width: 360,
                  height: 50,
                  child: Text(
                    "FiPay: The best multifunctional digital E-Wallet of this century.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>SignIn()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF6D5FFD),
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
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 20),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>   SignUp()));
                    },
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.maxFinite, 50),
                        side: const BorderSide(color: Colors.white)),
                    child: const Text(
                      "Create an account",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
