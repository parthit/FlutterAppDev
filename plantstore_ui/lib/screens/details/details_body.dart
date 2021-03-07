import "package:flutter/material.dart";
import '../../constants.dart';
import 'components/image_and_icons.dart';
import 'components/title_and_price.dart';

class DBody extends StatelessWidget {
  final String title, country;
  final int price;

  DBody({this.title, this.country, this.price});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsCard(size: size),
          TitleAndPrice(
            title: title,
            country: country,
            price: price,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 100,
                child: FlatButton(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
