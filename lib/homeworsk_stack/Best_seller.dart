import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BestSeller extends StatelessWidget {
  BestSeller({super.key});
  List BestSeller1 = [
    {
      "id": 1,
      "name": "Nike Sport shoe for",
      "priceDisCount": "26.39",
      "priceFull": "29.00",
      "image": "assets/shoes/shoe1.png",
    },
    {
      "id": 2,
      "name": "High heels sandal",
      "priceDisCount": "26.39",
      "priceFull": "29.00",
      "image": "assets/shoes/shoe2.png",
    },
    {
      "id": 3,
      "name": "Nike Sues Over Unauthorized",
      "priceDisCount": "26.39",
      "priceFull": "29.00",
      "image": "assets/shoes/shoe3.png",
    },
    {
      "id": 4,
      "name": "Nike Dunk High By You",
      "priceDisCount": "26.39",
      "priceFull": "29.00",
      "image": "assets/shoes/shoe4.png",
    },
    {
      "id": 5,
      "name": "You can lace Nike’s Adapt BB shoes",
      "priceDisCount": "26.39",
      "priceFull": "29.00",
      "image": "assets/shoes/shoe5.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: SizedBox(
        height: 310,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: BestSeller1.length,
            itemBuilder: (context, index) {
              var pObj = BestSeller1[index] as Map? ?? {};
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0, 3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                pObj["image"].toString(),
                                height: 150,
                                width: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                pObj["name"].toString(),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "\$${pObj["priceDisCount"]}".toString(),
                                style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${pObj["priceFull"]}"
                                        .toString()
                                        .toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black12.withOpacity(0.5),
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "9% off",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
