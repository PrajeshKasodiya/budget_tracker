import 'package:budget/view/%20authentication/register.dart';
import 'package:budget/view/%20authentication/login.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/welcome.png"), fit: BoxFit.cover),
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
              const SizedBox(
                width: 380,
                height: 50,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                width: 380,
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
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Registers()));
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
                              builder: (context) => const UserLogin()));
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
