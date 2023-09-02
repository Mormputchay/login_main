import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});
  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'My App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Cloum1(
              color: Colors.red,
            ),
            SizedBox(
              width: 5,
            ),
            Cloum1(
              color: Colors.pink,
            ),
            SizedBox(
              width: 5,
            ),
            Cloum1(
              color: Colors.orangeAccent,
            ),
            SizedBox(
              width: 5,
            ),
            Cloum1(
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class Cloum1 extends StatelessWidget {
  final Color color;
  const Cloum1({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 90, height: 90, color: color);
  }
}
