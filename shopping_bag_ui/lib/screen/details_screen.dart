import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_bag_ui/constants.dart';
import 'package:shopping_bag_ui/models/product.dart';

import 'details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailsBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: product.color,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),

      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("assets/icons/search.svg"), onPressed: (){}),
        IconButton(icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: (){}),
        SizedBox(width: kDefaultPadding/2),

      ],
    );
  }
}
