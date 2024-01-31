import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "iPhone 11",
                description: "The iPhone 11 features a dual-camera system, A13 Bionic chip, enhanced battery life, Liquid Retina display, and a durable design.",
                price: 1000,
                image: "assets/11.jpg"),
            ProductBox(
                name: "iPhone 12",
                description: "The iPhone 12 offers an A14 Bionic chip, OLED display, 5G support, improved dual-camera system, and a sleek, durable design.",
                price: 800,
                image: "assets/12.jpg"),
            ProductBox(
                name: "iPhone 13",
                description: "The iPhone 13 features an A15 Bionic chip, improved dual-camera system, longer battery life, 5G capability, and a sleek design.",
                price: 2000,
                image: "assets/13.jpg"),
            ProductBoxUrl(
                name: "iPhone 14",
                description:
                    "The iPhone 14 boasts an upgraded camera system, improved battery life, 5G capability, enhanced durability, and a sleek design.",
                price: 1500,
                image: "https://m.media-amazon.com/images/I/61ufE2FHl7L.jpg"),
            ProductBoxUrl(
                name: "iPhone 15",
                description: "The iPhone 15 features a sleek design, advanced cameras, improved battery life, 5G support, and enhanced security.",
                price: 100,
                image: "https://m.media-amazon.com/images/I/61eEYLATF9L._AC_UF1000,1000_QL80_.jpg"),
            ProductBoxUrl(
                name: "iPhone X",
                description: "The iPhone X boasts a Super Retina display, Face ID, dual cameras, A11 Bionic chip, and a glass and stainless steel design.",
                price: 20,
                image: "https://i5.walmartimages.com/seo/Like-New-Apple-iPhone-X-256GB-Factory-Unlocked-Smartphone_9b5ec8b2-9665-463b-adc5-64829ba72da6.1b496e5a8fcee76fdad69bae12b54745.jpeg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class ProductBoxUrl extends StatelessWidget {
  ProductBoxUrl({Key? key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}