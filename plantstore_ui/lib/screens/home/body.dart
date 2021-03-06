import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantstore_ui/constants.dart';
import 'components/header_with_btn.dart';
import 'components/header_with_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWIthMoreBtn(
            text: "More",
            pressed: () {},
          ),
          RecommendedPlantCard(
            title: "Samantha",
            country: "Russia",
            image: "assets/images/image_1.png",
            price: 150,
            pressed: () {},
          )
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {

  final String image, title, country;
  final int price;
  final Function pressed;

  RecommendedPlantCard({this.image,this.title,this.country,this.price,this.pressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: pressed,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    color: kPrimaryColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
