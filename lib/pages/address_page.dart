import 'package:ecommerce_app/widgets/common_textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isClicked = false;
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
              backgroundColor: Color(0xffF5F6FA),
              child: Image.asset('assets/icons/Arrow - Left.png', height: 25),
            ),
          ),
        ),
        title: Text(
          'Address',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Save Address",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
          fixedSize: MaterialStatePropertyAll(
            Size(double.infinity, 50),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
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
                textEditingController: nameTextController,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Country',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: CommonTextField(
                            hintText: 'Country',
                            type: TextInputType.text,
                            textEditingController: countryController,
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
                          'City',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: CommonTextField(
                            hintText: 'City',
                            type: TextInputType.text,
                            textEditingController: cityController,
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
                height: 15,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CommonTextField(
                hintText: 'Enter your phone number',
                type: TextInputType.number,
                textEditingController: phoneNumberController,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Address',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CommonTextField(
                hintText: 'Enter your address',
                type: TextInputType.streetAddress,
                textEditingController: addressController,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Set as a primary address',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CupertinoSwitch(
                      value: isClicked,
                      onChanged: (val) {
                        setState(() {
                          isClicked = val;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
