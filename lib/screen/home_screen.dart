import 'package:flutter/material.dart';
import 'package:nike_clone_web/widget/app_bar.dart';
import 'package:nike_clone_web/widget/model.dart';
import 'package:nike_clone_web/widget/carousel.dart';
import 'package:nike_clone_web/const.dart';
import 'package:nike_clone_web/widget/single_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          width: double.infinity,
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
        SizedBox(
          height: 20.0,
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
          width: double.infinity,
          pos1t: 340,
          pos1l: 40,
          pos2t: 490,
          pos2l: 40,
          pos3l: 40,
          pos3t: 520,
          text_highlited: 'introducting \nthe air max \ngenome',
          small_cap: 'A completely versatile take on modern style',
          button_name: 'Shop',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 40),
          child: Text(
            'The Latest And Greatest',
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Carousel(
                image: 'images/shoe1.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
              Carousel(
                image: 'images/shoe2.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
              Carousel(
                image: 'images/shoe3.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
              Carousel(
                image: 'images/shoe4.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
              Carousel(
                image: 'images/shoe5.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
              Carousel(
                image: 'images/shoe6.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
              Carousel(
                image: 'images/shoe7.jpg',
                headline: 'Nike Air Max Genome',
                price: '\$170',
                subtitle: 'Men\'s shoe',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 40),
          child: Text(
            'Features',
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 60),
              child: SingleModel(
                image: 'images/m1.jpg',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40),
              child: SingleModel(
                image: 'images/m2.jpg',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FotterItem(),
                SizedBox(
                  width: 60,
                ),
                FotterItem(),
                SizedBox(
                  width: 60,
                ),
                FotterItem(),
                SizedBox(
                  width: 600,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FaIcon(
                        FontAwesomeIcons.envelope,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class FotterItem extends StatelessWidget {
  const FotterItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Fselect(text: 'Get Card'),
          //Spacer(),
          Fselect(text: 'Find a store'),
          //Spacer(),
          Fselect(text: 'Sign up for main'),
          //Spacer(),
          Fselect(text: 'promotions'),
          //Spacer(),
          Fselect(text: 'nike journal'),
          //Spacer(),
          Fselect(text: 'feedback'),
        ],
      ),
    );
  }
}

class Fselect extends StatelessWidget {
  const Fselect({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tap');
      },
      child: Text(
        text.toUpperCase(),
        style: fotter_text,
        textAlign: TextAlign.left,
      ),
    );
  }
}
