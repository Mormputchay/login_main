import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login_main/homeworsk_stack/Best_seller.dart';

import 'Appbar.dart';
import 'TextCategory.dart';
import 'cardCategory.dart';
import 'fanhion.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});
  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  int _selectedIndex = 0;
  int selctTab = 0;
  TextEditingController txtSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: Appbar(txtSearch: txtSearch),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const FanhionSale(),
            const TextCategory(
              title: "Category",
            ),
            CardCategory(),
            const TextCategory(
              title: "Best Seller",
            ),
            BestSeller(),
          ],
        ),
      ),
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
    );
  }
}
