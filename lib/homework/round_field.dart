import 'package:flutter/material.dart';

class RoundField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final FocusNode? focusNode;
  final Widget? right;
  final ValueChanged<String>? onFieldSubmitted;
  final String? Function(String?)? validator;
  const RoundField({
    super.key,
    required this.placeholder,
    required this.controller,
    required this.icon,
    this.right,
    required this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.focusNode,
    this.onFieldSubmitted,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 25,
              color: Colors.blue,
            ),
            suffixIcon: right,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
            hintText: placeholder),
      ),
    );
  }
}
