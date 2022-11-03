import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  const Inputfield(
      {super.key, required this.hint, required this.label, required this.icon});
  final String hint;
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          hintText: hint,
          labelText: label,
          suffixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange))),
    );
  }
}
