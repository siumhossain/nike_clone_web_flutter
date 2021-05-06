import 'package:flutter/material.dart';
import 'package:nike_clone_web/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bar extends StatelessWidget {
  const Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      'assets/icons/nike.svg',
                      height: 50.0,
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                AppBar_text(
                  input: 'Gifts for Mom',
                ),
                SizedBox(width: 18),
                AppBar_text(
                  input: 'New Releases',
                ),
                SizedBox(width: 18),
                AppBar_text(
                  input: 'Men',
                ),
                SizedBox(width: 18),
                AppBar_text(
                  input: 'Women',
                ),
                SizedBox(width: 18),
                AppBar_text(
                  input: 'Kids',
                ),
                SizedBox(width: 18),
                AppBar_text(
                  input: 'Customize',
                ),
                SizedBox(width: 18),
                AppBar_text(
                  input: 'Sale',
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 40.0,
                    width: 180.0,
                    child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: searchbar_decoration),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.shopping_bag,
                  color: Colors.grey[500],
                  size: 30.0,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class AppBar_text extends StatelessWidget {
  AppBar_text({required this.input});
  final String input;

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
