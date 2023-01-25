import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:const[
                  Icon(
                    Icons.check_circle_rounded,
                    color: Color(0xFF5D5FEF),
                    size: 120.0,
                  ),
                  SizedBox(height: 35),
                    Text(
                    "Successful!",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Color(0xFF5D5FEF)),
                  ),
                    SizedBox(height: 35),
                    Text(
                    "Please check your email to confirm ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black45),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
