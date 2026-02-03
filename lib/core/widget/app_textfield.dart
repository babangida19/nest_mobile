import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'First Name',
        floatingLabelBehavior: FloatingLabelBehavior.always, // 👈 key
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        labelStyle: const TextStyle(
          color: Color(0xFF98A2B3), // soft grey
          fontSize: 14,
        ),
        hintText: 'Wilkins',
        hintStyle: const TextStyle(
          color: Color(0xFF101828),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40), // 👈 pill shape
          borderSide: const BorderSide(
            color: Color(0xFFE4E7EC), // light border
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
          ),
        ),
      ),
    );
  }
}
