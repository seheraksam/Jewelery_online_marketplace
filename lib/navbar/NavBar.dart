import 'package:flutter/material.dart';
import 'package:kokona/page/homePage.dart';
import 'package:kokona/page/loginPage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}
/*body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: _currentIndex,
              builder: (BuildContext context, int index, Widget? child) {
                return tabs[index];
              },
            ),
          ),
        ],
      ), 
      */

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 95,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20.0,
            top: 5,
            right: 50,
            left: 50,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width - 100,
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xffF6F7C4),
                borderRadius: BorderRadius.circular(30)),
            child: ValueListenableBuilder(
              valueListenable: _currentIndex,
              builder: (BuildContext context, int valueNtfr, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          alignment: Alignment.center,
                          height: valueNtfr == 0 ? 30 : 25,
                          width: valueNtfr == 0 ? 30 : 25,
                          fit: BoxFit.contain,
                          "images/kolye.jpeg",
                          semanticLabel: "home",
                          // ignore: deprecated_member_use
                          color: valueNtfr == 0
                              ? Color(0xFFEEF5FF)
                              : Color(0XFFFFC0D9),
                        ),
                      ),
                      onTap: () {
                        _currentIndex.value = 0;
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          alignment: Alignment.center,
                          height: valueNtfr == 1 ? 30 : 25,
                          width: valueNtfr == 1 ? 30 : 25,
                          fit: BoxFit.cover,
                          "images/kolye.jpeg",
                          // ignore: deprecated_member_use
                          color: valueNtfr == 1
                              ? Color(0xFFEEF5FF)
                              : Color(0XFFFFC0D9),
                        ),
                      ),
                      onTap: () {
                        _currentIndex.value = 1;
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          alignment: Alignment.center,
                          height: valueNtfr == 2 ? 30 : 25,
                          width: valueNtfr == 2 ? 30 : 25,
                          fit: BoxFit.cover,
                          "images/kolye.jpeg",

                          // ignore: deprecated_member_use
                          color: valueNtfr == 2
                              ? Color(0xFFEEF5FF)
                              : Color(0XFFFFC0D9),
                        ),
                      ),
                      onTap: () {
                        _currentIndex.value = 2;
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  final ValueNotifier<int> _currentIndex = ValueNotifier(0);
  final tabs = [
    HomePage(),
    LoginPage(),
    //pageler gelicek sırasıyla tasarım,keşfet,sepetim.
  ];
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
