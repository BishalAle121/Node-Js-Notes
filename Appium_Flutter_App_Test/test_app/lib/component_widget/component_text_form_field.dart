import 'package:flutter/material.dart';

class ComponentTextFormField extends StatelessWidget {
  final Key? key;
  final String label;
  final String textHint;
  final String? Function(String?) Validator;
  final Icon? suffixIcon;
  final Icon? prefixicon;
  final TextEditingController controller;
  final Key? checkKey;

  ComponentTextFormField(
      {this.key,
      required this.label,
      required this.textHint,
      required this.Validator,
      this.suffixIcon,
      this.prefixicon,
      required this.controller,
      this.checkKey});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: checkKey,
      controller: controller,
      validator: Validator,
      decoration: InputDecoration(
          label: Text(label),
          hintText: textHint,
          prefixIcon: prefixicon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder()),
    );
  }
}
