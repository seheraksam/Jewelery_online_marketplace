import 'package:flutter/material.dart';
import 'package:kokona/page/homePage.dart';
import 'package:kokona/page/loginPage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    LoginPage(),
    HomePage(),
    Text('Index 2: School'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("selam"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFFEEF5FF), Color(0XFFFFC0D9)],
          ),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Color(0xffFCC7DE),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Tasarım',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Keşfet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Sepetim',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
