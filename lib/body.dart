import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/ad_card.dart';
import 'package:shop_app/category_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search_rounded),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Container(
                    width: 70,
                    height: 4,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.filter_alt,
                          size: 20,
                        ),
                        Text("filter"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Shop by Category",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            width: 450,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 50, crossAxisCount: 2),
              itemBuilder: (context, index) => const Row(
                children: [
                  card,
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 250,
            color: Colors.orange[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Text",
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  "get up to 50% off on your\nfaviourite products",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) => adCard,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Quick Picks",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
