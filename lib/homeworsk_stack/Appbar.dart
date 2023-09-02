import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key, required this.txtSearch});
  final TextEditingController txtSearch;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Container(
        width: double.maxFinite,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: TextField(
          controller: txtSearch,
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 25,
              ),
              border: InputBorder.none,
              hintText: "Search"),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Badge(
                label: Text('2'),
                backgroundColor: Colors.lightGreen,
                child: Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Badge(
                label: Text('2'),
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
