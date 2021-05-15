import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.button_name,
  }) : super(key: key);

  final String button_name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        button_name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () => print("it's pressed"),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
