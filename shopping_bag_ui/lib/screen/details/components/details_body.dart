import "package:flutter/material.dart";
import 'package:shopping_bag_ui/constants.dart';
import 'package:shopping_bag_ui/models/product.dart';

import 'ColorAndSize.dart';
import 'ProductTitleWithImage.dart';
import 'description.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  DetailsBody({this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.15, left: kDefaultPadding),
                  //height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      CartCounter()
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
            icon: Icons.remove,
            pressed: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            pressed: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function pressed}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        onPressed: pressed,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(icon),
      ),
    );
  }
}
