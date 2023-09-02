import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  List iconsShoes = [
    {
      "id": 1,
      "name": "Fashion",
      "image": "assets/icons/dress.png",
    },
    {
      "id": 2,
      "name": "Electronics",
      "image": "assets/icons/responsive.png",
    },
    {
      "id": 3,
      "name": "Mobiles",
      "image": "assets/icons/mobile-phone.png",
    },
    {
      "id": 4,
      "name": "Grocery",
      "image": "assets/icons/grocery-cart.png",
    },
    {
      "id": 5,
      "name": "bag",
      "image": "assets/icons/sling-bag.png",
    },
    {
      "id": 6,
      "name": "Shoe",
      "image": "assets/icons/shoes.png",
    },
  ];

  CardCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 87,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: iconsShoes.length,
            itemBuilder: (context, index) {
              var pObj = iconsShoes[index] as Map? ?? {};
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  margin: const EdgeInsets.only(right: 2.5),
                  width: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.shade700.withOpacity(0.4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue,
                          ),
                          child: Image.asset(
                            pObj["image"].toString(),
                            width: 10,
                            height: 5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        pObj["name"].toString(),
                        style:
                            const TextStyle(fontSize: 11, color: Colors.black),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
