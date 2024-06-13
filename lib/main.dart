import 'package:flutter/material.dart';
import 'package:shop_app/body.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Body(),
        drawer: const Drawer(
          width: 275,
        ),
        appBar: AppBar(
          leadingWidth: 60,
          centerTitle: true,
          title: const Text(
            "Store",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  width: 0.5,
                ),
              ),
              child: const Icon(
                Icons.shopping_cart,
                size: 32,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
