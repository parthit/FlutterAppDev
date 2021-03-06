import "package:flutter/material.dart";
import "package:plantstore_ui/constants.dart";

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturesPlantCard(
            image: "assets/images/bottom_img_1.png",
            pressed: () {},
          ),
          FeaturesPlantCard(
            image: "assets/images/bottom_img_2.png",
            pressed: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturesPlantCard extends StatelessWidget {
  final String image;
  final Function pressed;

  FeaturesPlantCard({this.image, this.pressed});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: pressed,
      child: Container(
        width: size.width * 0.8,
        margin: EdgeInsets.only(
            top: kDefaultPadding / 2, bottom: kDefaultPadding / 2, left: kDefaultPadding),

        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image))),
      ),
    );
  }
}
