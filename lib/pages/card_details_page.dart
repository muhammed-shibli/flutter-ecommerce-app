import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';
import 'package:ecommerce_app/pages/payment_page.dart';
import 'package:ecommerce_app/widgets/common_textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  TextEditingController cardOwnerName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();

  TextEditingController expNumber = TextEditingController();
  TextEditingController cvvnumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: const Color(0xffF5F6FA),
              child: Image.asset('assets/icons/Arrow - Left.png', height: 25),
            ),
          ),
        ),
        title: Text(
          'Add Card',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          if (cardNumber.text.isEmpty ||
              cardOwnerName.text.isEmpty ||
              expNumber.text.isEmpty ||
              cvvnumber.text.length == 2 ||
              cardNumber.text.length == 11) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Please Enter Valid Details.."),
              ),
            );
          } else {
            // Future.delayed(Duration(seconds: 2));
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => PaymentPage(
                  cardName: cardOwnerName.text,
                  cardNumber: cardNumber.text,
                  cvvNumber: cvvnumber.text,
                  expiry: expNumber.text,
                ),
              ),
            );
          }
        },
        child: Text(
          "Add Card",
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
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple[100],
                  ),
                ),
              ],
            ),
            Text(
              'Card Owner',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommonTextField(
              hintText: 'Name',
              type: TextInputType.name,
              textEditingController: cardOwnerName,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Card Number',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommonTextField(
              hintText: 'Card Number',
              type: TextInputType.number,
              textEditingController: cardNumber,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: CommonTextField(
                          hintText: '24/24',
                          type: TextInputType.number,
                          textEditingController: expNumber,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: CommonTextField(
                          hintText: 'CVV',
                          type: TextInputType.number,
                          textEditingController: cvvnumber,
                        ),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
