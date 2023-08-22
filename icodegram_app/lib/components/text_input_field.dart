import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final hintText;
  final bool isPassword;
  final TextEditingController editingController;
  final TextInputType textInputType;
  const TextInputField(
      {super.key,
      required this.hintText,
      required this.isPassword,
      required this.editingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: '$hintText',
        border:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      controller: editingController,
      obscureText: isPassword,
      keyboardType: textInputType,
    );
  }
}
