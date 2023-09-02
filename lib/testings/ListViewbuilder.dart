import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});
  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  // ignore: non_constant_identifier_names
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
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My ListView Builder'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: MyList.length,
            itemBuilder: (context, index) {
              var item = MyList[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 55,
                  decoration: BoxDecoration(
                      color: selected == true
                          ? Colors.blueAccent
                          : Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: item[Icons],
                    title: Text(
                      item["name"],
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              (selected == true) ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
