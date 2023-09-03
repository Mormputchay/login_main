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
    );
  }
}
