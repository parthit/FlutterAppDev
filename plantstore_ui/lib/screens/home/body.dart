import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantstore_ui/constants.dart';
import 'components/header_with_btn.dart';
import 'components/header_with_search.dart';
import 'components/plant_recommendations.dart';

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
          RecommendsPlants(),
          TitleWIthMoreBtn(
            text: "Featured Plants",
            pressed: () {},
          ),
          FeaturesPlantCard(size: size),
        ],
      ),
    );
  }
}

class FeaturesPlantCard extends StatelessWidget {
  const FeaturesPlantCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("assets/images/bottom_img_1.png"))),
    );
  }
}
