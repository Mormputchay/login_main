import 'package:flutter/material.dart';

class TextCategory extends StatelessWidget {
  const TextCategory({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const Text(
            "View all",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
