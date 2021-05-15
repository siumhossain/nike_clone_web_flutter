import 'package:flutter/material.dart';
import 'package:nike_clone_web/widget/button.dart';

class SingleModel extends StatelessWidget {
  const SingleModel({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 620,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 890,
            left: 40,
            child: Text(
              'Always Rock On',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Anton',
                fontSize: 50,
                height: 1.0,
              ),
            ),
          ),
          Positioned(
            top: 950,
            left: 40,
            child: SizedBox(
              height: 40,
              width: 90,
              child: Button(
                button_name: 'Shop',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
