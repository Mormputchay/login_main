import 'package:flutter/material.dart';

class MyNewPage extends StatefulWidget {
  const MyNewPage({super.key});
  @override
  State<MyNewPage> createState() => _MyNewPageState();
}

class _MyNewPageState extends State<MyNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        children: [
          for (var i = 1; i < 10; i++)
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Image.network(
                "https://th.bing.com/th/id/R.e338b4ff92a47fc2bf3387247c446b0d?rik=JTxHBtJ3rVmOZw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fcat%2fcat_PNG50424.png&ehk=kzoJEsuEY5%2fbjOJGxiTKgIQm8H%2fTgfr6bVlNThRVPUc%3d&risl=1&pid=ImgRaw&r=0",
                width: 14,
                height: 14,
              ),
            ),
        ],
      ),
    );
  }
}
