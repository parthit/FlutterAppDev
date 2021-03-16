import "package:flutter/material.dart";
import "package:shopping_bag_ui/constants.dart";
import 'package:shopping_bag_ui/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function pressed;

  ItemCard({this.product, this.pressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
