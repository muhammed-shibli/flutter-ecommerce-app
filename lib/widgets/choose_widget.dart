import 'package:flutter/material.dart';

class ChooseWidget extends StatelessWidget {
  final String name;
  final String buttonName;
  final VoidCallback ontap;
  const ChooseWidget({
    super.key,
    required this.name,
    required this.buttonName,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        InkWell(
          onTap: ontap,
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
