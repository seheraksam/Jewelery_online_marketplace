import 'package:flutter/material.dart';

import '../navbar/NavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String abs = 'Kolye';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xFFEEF5FF), Color(0XFFFFC0D9)],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Lütfen İstediğiniz takıyı seçiniz.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 24,
                              width: MediaQuery.of(context).size.width / 2 - 18,
                              child: Image.asset(
                                "images/kolye.jpeg",
                                fit: BoxFit.contain,
                                scale: 1,
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
