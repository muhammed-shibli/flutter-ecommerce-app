import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    List productImage = [
      'assets/icons/t-shirt.png',
      'assets/icons/tshirt.png',
      'assets/icons/tshirt(1).png',
      'assets/icons/t-shirt.png',
      'assets/icons/tshirt.png',
      'assets/icons/tshirt(1).png',
      'assets/icons/t-shirt.png',
      'assets/icons/tshirt.png',
      'assets/icons/tshirt(1).png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whishlist',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '35 Items',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'in wishlist',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,
                  ),
                  itemCount: productImage.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 160,
                                height: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100],
                                ),
                                child: Image.asset(productImage[index]),
                              ),
                              Positioned(
                                right: 0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.heart,
                                      size: 30,
                                      color: Colors.grey,
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Nike Sport Wear Club',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Fleece',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$99",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
