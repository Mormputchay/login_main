import 'package:flutter/material.dart';
import 'package:login_main/testings/My_Dawer.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});
  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  final List MyList = [
    {
      Icons: const Icon(
        Icons.confirmation_number_sharp,
        size: 35,
        color: Colors.green,
      ),
      "name": "TaTa"
    },
    {
      Icons: const Icon(
        Icons.print,
        size: 35,
        color: Colors.redAccent,
      ),
      "name": "VVV"
    },
    {
      Icons: const Icon(
        Icons.facebook,
        size: 35,
        color: Colors.deepOrangeAccent,
      ),
      "name": "IOIO"
    },
    {
      Icons: const Icon(
        Icons.home,
        size: 35,
        color: Colors.cyanAccent,
      ),
      "name": "BoBo"
    },
    {
      Icons: const Icon(
        Icons.u_turn_left,
        size: 35,
        color: Colors.orangeAccent,
      ),
      "name": "Sok na"
    },
    {
      Icons: const Icon(
        Icons.shopping_bag_outlined,
        size: 35,
        color: Colors.greenAccent,
      ),
      "name": "ly ly"
    },
    {
      Icons: const Icon(
        Icons.tab_rounded,
        size: 35,
        color: Colors.purpleAccent,
      ),
      "name": "ly ly"
    },
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My ListView Builder'),
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: ListView.builder(
            itemCount: MyList.length,
            itemBuilder: (context, i) {
              var item = MyList[i];
              return InkWell(
                onTap: () {
                  setState(() {
                    index = i;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 55,
                  decoration: BoxDecoration(
                      color: i == index
                          ? Colors.blue
                          : Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: item[Icons],
                    title: Text(
                      item["name"],
                      style: TextStyle(
                          fontSize: 16,
                          color: i == index ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
