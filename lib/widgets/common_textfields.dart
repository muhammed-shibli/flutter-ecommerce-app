import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType type;

  const CommonTextField( {
    super.key, required this.hintText, required this.textEditingController, required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type ,
      controller: textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 233, 234, 237),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
