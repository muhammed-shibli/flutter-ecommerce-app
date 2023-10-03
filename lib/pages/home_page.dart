import 'package:ecommerce_app/pages/product_details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetailsPage()));
        },
        child: Container(
          child: Image.asset(
            'assets/icons/vector2.png',
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
