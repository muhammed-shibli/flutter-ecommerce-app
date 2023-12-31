import 'package:ecommerce_app/pages/product_details_page.dart';
import 'package:ecommerce_app/widgets/choose_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool addLike = false;
  // void isLiked(int index) {
  //   setState(() {
  //     addLike = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    List brandImages = [
      'assets/images/adidas.png',
      'assets/images/fila.png',
      'assets/images/nike.png',
      'assets/images/puma.png',
    ];

    List brandNames = [
      'Adidas',
      'Fila',
      'Niklle',
      'Puma',
    ];

    List productImage = [
      'assets/icons/t-shirt.png',
      'assets/icons/tshirt.png',
      'assets/icons/tshirt(1).png',
    ];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Welcome to shibili',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: 'Search...',
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Image.asset(
                          'assets/icons/search.png',
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.mic),
                    style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(50, 50)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff9775fa)),
                      iconColor: MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ChooseWidget(
                name: 'Choose Brand',
                buttonName: 'View All',
                ontap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: brandImages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 60,
                        // width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  brandImages[index],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                brandNames[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              ChooseWidget(
                name: 'New Arrival',
                buttonName: 'View All',
                ontap: () {},
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
