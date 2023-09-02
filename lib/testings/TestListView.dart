import 'package:flutter/material.dart';

class TestListView extends StatefulWidget {
  const TestListView({super.key});
  @override
  State<TestListView> createState() => _TestListViewState();
}

class _TestListViewState extends State<TestListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 30; i++)
            const ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
                color: Colors.red,
              ),
              title: Text("My name"),
              subtitle: Text("11:02"),
              trailing: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.green,
              ),
            )
        ],
      ),
    );
  }
}
