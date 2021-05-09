import 'package:flutter/material.dart';
import 'package:nike_clone_web/widget/app_bar.dart';
import 'package:nike_clone_web/widget/model.dart';

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
        ImageModel(
          image: 'images/3.jpg',
          height: 600.0,
          pos1t: 380,
          pos1l: 40,
          pos2t: 490,
          pos2l: 40,
          pos3t: 520,
          pos3l: 40,
          text_highlited: 'Skip the \nSlippers',
          small_cap: 'Last thing mama want\'s to wear',
          button_name: 'Shop',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 40),
          child: Text(
            'New Releases',
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ),
        ImageModel(
          image: 'images/2.jpg',
          height: 600.0,
          pos1t: 350,
          pos1l: 40,
          pos2t: 510,
          pos2l: 40,
          pos3l: 40,
          pos3t: 550,
          text_highlited: 'introducting \nthe air max \ngenome',
          small_cap: 'A completely versatile take on modern style',
          button_name: 'Shop',
        ),
      ],
    ));
  }
}
