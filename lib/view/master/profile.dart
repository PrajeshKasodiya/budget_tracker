import 'package:budget/controller/Provider/Provider_helper/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 20, top: 15),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  // SizedBox(width: 3),
                  const Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ListView(
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFDFDFFA),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: const Center(
                                child: Icon(Icons.image,
                                    size: 27, color: Colors.blueAccent),
                              ),
                            ),
                          ),
                          const Text(
                            "df",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right),
                              color: Colors.blueAccent),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDFDFFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Icon(Icons.image,
                                  size: 27, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        const Text(
                          "df",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.blueAccent),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDFDFFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Icon(Icons.image,
                                  size: 27, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        const Text(
                          "df",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.blueAccent),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDFDFFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Icon(Icons.image,
                                  size: 27, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        const Text(
                          "df",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.blueAccent),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDFDFFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Icon(Icons.image,
                                  size: 27, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        const Text(
                          "df",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.blueAccent),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDFDFFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Icon(Icons.image,
                                  size: 27, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        const Text(
                          "df",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.blueAccent),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDFDFFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Icon(Icons.image,
                                  size: 27, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        const Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              provider.logout(context);
                            },
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.blueAccent),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
