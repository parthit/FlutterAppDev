import "package:flutter/material.dart";
import 'package:shopping_bag_ui/constants.dart';
import 'package:shopping_bag_ui/models/product.dart';
import 'package:shopping_bag_ui/screen/details/components/counter_with_fav_button.dart';

import 'ColorAndSize.dart';
import 'ProductTitleWithImage.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
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
                      SizedBox(height: kDefaultPadding/2,),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
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
