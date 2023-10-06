import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Checkout",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(0))),
          backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
          fixedSize: MaterialStatePropertyAll(
            Size(double.infinity, 50),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: Color(0xffF5F6FA),
              child: Image.asset('assets/icons/Arrow - Left.png', height: 25),
            ),
          ),
        ),
        title: Text('Cart',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 120,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFFFEFEFE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F383E4A),
                          blurRadius: 100,
                          offset: Offset(0, 40),
                          spreadRadius: -15,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: Color(0xFFF2F2F2),
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'assets/icons/tshirt.png',
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 160,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                      child: Text(
                                          'Men\'s Tie-Dye T-Shirt Nike Sportswear ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500))),
                                  Text('\$45 ',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400))
                                ]),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.delete_outline,
                                size: 20,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
