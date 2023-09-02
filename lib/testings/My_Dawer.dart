import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final List<dynamic> listIcons = [
    {
      "icons": const Icon(
        Icons.favorite,
        size: 25,
      ),
      "name": 'favorite'
    },
    {
      "icons": const Icon(
        Icons.book,
        size: 25,
      ),
      "name": 'book'
    },
    {
      "icons": const Icon(
        Icons.settings,
        size: 25,
      ),
      "name": 'setting'
    }
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 7,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/icons/me.jpg'),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "User Account",
                  style: TextStyle(fontSize: 22, color: Colors.pink),
                ),
              ],
            ),
            const Divider(
              color: Colors.green,
              height: 16,
              thickness: 0.5,
            ),
            for (int i = 0; i < listIcons.length; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = i;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.maxFinite,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: i == index ? Colors.pinkAccent : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: i == index ? Colors.white : Colors.black,
                          width: 1)),
                  height: 53,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      listIcons[i]["icons"],
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        listIcons[i]["name"],
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
