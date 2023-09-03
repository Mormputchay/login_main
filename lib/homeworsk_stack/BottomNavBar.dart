import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login_main/homeworsk_stack/sale_screen.dart';
import 'package:login_main/view/screen2.dart';

import '../view/screen3.dart';
import '../view/screen4.dart';
import '../view/screen5.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  int selctTab = 0;
  List Screens = [
    const SaleScreen(),
    const Screen2(),
    const Screen3(),
    const Screen4(),
    const Screen5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey.withOpacity(0.6),
        backgroundColor: Colors.white,
        index: _selectedIndex,
        height: 65,
        animationCurve: Curves.easeIn,
        animationDuration: const Duration(microseconds: 400),
        items: <Widget>[
          Icon(Icons.home,
              size: 27, color: (selctTab == 0) ? Colors.white : Colors.black38),
          Icon(Icons.list,
              size: 27, color: (selctTab == 1) ? Colors.white : Colors.black38),
          Icon(Icons.favorite,
              size: 27, color: (selctTab == 2) ? Colors.white : Colors.black38),
          Icon(Icons.shopping_cart,
              size: 27, color: (selctTab == 3) ? Colors.white : Colors.black38),
          Icon(Icons.person,
              size: 27, color: (selctTab == 4) ? Colors.white : Colors.black38),
        ],
        buttonBackgroundColor: Colors.blue,
        onTap: (index) {
          //Handle button tap
          setState(() {
            _selectedIndex = index;
            selctTab = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}
