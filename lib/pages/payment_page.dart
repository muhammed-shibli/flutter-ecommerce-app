import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final String cardName;
  final String cardNumber;
  final String cvvNumber;
  final String expiry;
  const PaymentPage({super.key, required this.cardName, required this.cardNumber, required this.cvvNumber, required this.expiry});

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
          'Payment',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
             DebitCreditCardWidget(
              cardType: CardType.debit,
              cardBrand: CardBrand.mastercard,
              cardExpiry: expiry,
              color1: Colors.purple,
              showNFC: true,
              cardNumber: cardNumber,
              cardHolderName: cardName,
              
            ),
          ],
        ),
      ),
    );
  }
}
