import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  var productImages = [
    'assets/icons/tshirt.png',
    'assets/icons/t-shirt.png',
    'assets/icons/tshirt(1).png',
    'assets/icons/tshirt(2).png',
  ];
  var sizes = ["S", "M", "L", "XL", "2XL"];
  int indexOfCurrentSelectedImage = 0;
  int? indexOfCurrentSelectedSize;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
          onPressed: () {},
          child: Text("Add to Cart",
              style: TextStyle(color: Colors.white, fontSize: 17)),
          style: ButtonStyle(shape: MaterialStatePropertyAll( BeveledRectangleBorder(borderRadius: BorderRadius.circular(0))),
              backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
              fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50)))),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    color: Color(0xFFF2F2F2),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: SafeArea(
                        child: Image.asset(
                      productImages[indexOfCurrentSelectedImage],
                      fit: BoxFit.contain,
                    ))),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Men's Tshirts",
                                style: TextStyle(
                                    color: Color(0xFF8F959E), fontSize: 13)),
                            Text("Price",
                                style: TextStyle(
                                    color: Color(0xFF8F959E), fontSize: 13))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("3 in 1 t-shirt combo",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                            Text("\$150",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600))
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: productImages.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    indexOfCurrentSelectedImage = index;
                                  });
                                },
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.all(5.5),
                                    decoration:
                                        indexOfCurrentSelectedImage != index
                                            ? BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFF2F2F2),
                                              )
                                            : BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.blueAccent,
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFF2F2F2),
                                              ),
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      productImages[index],
                                      fit: BoxFit.contain,
                                    )),
                              );
                            },
                          ),
                        ),
                        Text("Size",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: sizes.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    indexOfCurrentSelectedSize = index;
                                  });
                                },
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.all(5.5),
                                    decoration:
                                        indexOfCurrentSelectedSize != index
                                            ? BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFF2F2F2),
                                              )
                                            : BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.blueAccent,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFF2F2F2),
                                              ),
                                    width: 60,
                                    height: 60,
                                    child: Center(
                                        child: Text(
                                      sizes[index],
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ))),
                              );
                            },
                          ),
                        ),
                        Text("Description",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                        Text(
                            "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with..",
                            style: TextStyle(
                                color: Color(0xFF8F959E), fontSize: 13)),
                      ],
                    ))
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/Arrow - Left.png',
                          height: 25),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/cart.png', height: 25),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
