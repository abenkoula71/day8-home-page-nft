import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 145, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 145, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 145, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 350.0,
              aspectRatio: 3,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeOutBack,
              enlargeCenterPage: true,
              enlargeFactor: 0.4,
              scrollDirection: Axis.horizontal,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://uploads-ssl.webflow.com/61c0120d981c8f9d9322c0e0/61ca497efc91881256158064_blog%20article.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Find new Collections',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'All Cryptos go through a rigorous evaluation process and are compared to thousands of other crypto projects',
              style: TextStyle(color: Colors.white54, fontSize: 16.5),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: SliderButton(
                width: double.infinity,
                action: () {
                  ///Do something here
                  // Navigator.of(context).pop();
                },
                label: Text(
                  "Place Bid",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/628px-Ethereum_logo_2014.svg.png'),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
