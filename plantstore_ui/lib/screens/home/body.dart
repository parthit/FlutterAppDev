import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantstore_ui/constants.dart';
import 'components/featured_plants.dart';
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
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
