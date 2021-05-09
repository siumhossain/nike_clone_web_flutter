import 'package:flutter/material.dart';

class ImageModel extends StatelessWidget {
  const ImageModel({
    required this.image,
    required this.height,
    required this.text_highlited,
    required this.small_cap,
    required this.button_name,
    required this.pos1t,
    required this.pos1l,
    required this.pos2t,
    required this.pos2l,
    required this.pos3t,
    required this.pos3l,
  });
  final String image;
  final double height;
  final String text_highlited;
  final String small_cap;
  final String button_name;
  final double pos1t;
  final double pos1l;
  final double pos2t;
  final double pos2l;
  final double pos3t;
  final double pos3l;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: pos1t,
              left: pos1l,
              child: Text(
                text_highlited.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Anton',
                  fontSize: 50,
                  height: 1.0,
                ),
              ),
            ),
            Positioned(
              top: pos2t,
              left: pos2l,
              child: Text(
                small_cap,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: pos3t,
              left: pos3l,
              child: SizedBox(
                height: 40,
                width: 90,
                child: ElevatedButton(
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
