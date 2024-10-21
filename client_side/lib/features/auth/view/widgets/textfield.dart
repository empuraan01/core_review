import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  const Textfield({
    super.key,
    required this.hintText,
    required this.controller,
    required this.isObscureText,
  });

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isObscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
      ),
      validator: (val) {
        if (val!.trim().isEmpty) {
          return "$widget.hintText is missing!";
        }
        return null;
      },
    );
  }
}
