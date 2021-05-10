import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel(
      {required this.image,
      required this.headline,
      required this.price,
      required this.subtitle});
  final String image;
  final String headline;
  final String price;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tap');
      },
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 60),
        child: Container(
          height: 380,
          width: 380,
          //color: Colors.redAccent,
          child: Stack(
            children: <Widget>[
              Container(
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  top: 325,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Nike Air Max Genome',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 165,
                          ),
                          Text(
                            '\$170',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Men\s shoe',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  )),
            ],
          ),
          //color: Colors.redAccent,
        ),
      ),
    );
  }
}
