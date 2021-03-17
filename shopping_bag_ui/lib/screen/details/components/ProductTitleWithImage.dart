import 'package:flutter/material.dart';
import 'package:shopping_bag_ui/constants.dart';
import 'package:shopping_bag_ui/models/product.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
