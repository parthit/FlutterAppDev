import 'package:flutter/material.dart';
import 'package:plantstore_ui/screens/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final String title, country;
  final int price;

  DetailsScreen({this.price, this.country, this.title});

  //I have not included image because I could not find high res versions of the same
  //Hence all images in Details Screen are of the same plant
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DBody(
        title: title,
        country: country,
        price: price,
      ),
    );
  }
}
