import 'package:ecommerce_app/pages/product_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                // radius: 28,
                backgroundColor: Color(0xffF5F6FA),
                child: Image.asset(
                  'assets/icons/menu.png',
                  height: 25,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => ProductDetailsPage()));
                },
                child: CircleAvatar(
                  // radius: 28,
                  backgroundColor: Color(0xffF5F6FA),
                  child: Image.asset(
                    'assets/icons/cart.png',
                    height: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [],
        ));
  }
}
