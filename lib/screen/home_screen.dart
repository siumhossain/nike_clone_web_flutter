import 'package:flutter/material.dart';
import 'package:nike_clone_web/widget/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Bar(),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
          child: Container(
            width: double.infinity,
            height: 600.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/1.jpg'), fit: BoxFit.cover),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 380,
                  left: 40,
                  child: Text(
                    'Skip the \nSlippers'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Anton',
                      fontSize: 50,
                      height: 1.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 485,
                  left: 40,
                  child: Text(
                    'Last thing mama want\'s to wear',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 520,
                  left: 40,
                  child: SizedBox(
                    height: 40,
                    width: 90,
                    child: ElevatedButton(
                      child: Text(
                        "Shop",
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
        ),
      ],
    ));
  }
}
