import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FanhionSale extends StatefulWidget {
  const FanhionSale({super.key});

  @override
  State<FanhionSale> createState() => _FanhionSaleState();
}

class _FanhionSaleState extends State<FanhionSale> {
  int _current = 0;
  final List<String> imgList = [
    'assets/image/men1.png',
    'assets/image/men2.png',
    'assets/image/gils.png',
  ];
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CarouselSlider(
            carouselController: _controller,
            items: imgList
                .map((item) => Stack(
                      children: [
                        Positioned(
                            child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: media.width * 3.3,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10)),
                        )),
                        Positioned(
                          left: 18,
                          top: 1,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Summer Special",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fanhion".toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "SALE".toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  MaterialButton(
                                    height: 25,
                                    color: Colors.redAccent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    onPressed: () {},
                                    child: Text(
                                      "Order now".toUpperCase(),
                                      style: const TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                item,
                                height: 210,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
                .toList(),
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.pink)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
