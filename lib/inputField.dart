import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  const Inputfield({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _formField("", "Name", false),
            _sizeBoxColumn(20),
            _formField("", "Email", false),
            _sizeBoxColumn(20),
            _formField("", "Password", true),
            _sizeBoxColumn(20),
            _button("Click Me", Colors.green, Colors.black)
          ],
        ),
      ),
    ));
  }

  Widget _formField(String hintText, String label, bool hideText) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        label: Text(label),
        hintText: hintText,
      ),
      obscureText: hideText,
    );
  }

  Widget _sizeBoxColumn(double size) {
    return SizedBox(
      height: size,
    );
  }

  Widget _button(String buttonName, Color buttonColor, Color textColor) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: textColor,
      ),
      child: Text(
        buttonName,
        style: const TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}
