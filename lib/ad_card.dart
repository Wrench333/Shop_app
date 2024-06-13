import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  final String link, title, price;
  const AdCard(
      {super.key,
      required this.link,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            link,
            height: 70,
          ),
          Text(title),
          Text(price)
        ],
      ),
    );
  }
}

const adCard = AdCard(
  link:
      "https://pyxis.nymag.com/v1/imgs/36a/39c/795d7079e8d987b2ead62a77b637f33425-bic-shampoo.rsquare.w700.jpg",
  title: "Text",
  price: "\$20",
);
