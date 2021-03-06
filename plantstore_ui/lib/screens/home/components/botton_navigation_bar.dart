import "package:flutter/material.dart";
import "package:plantstore_ui/constants.dart";
import "package:flutter_svg/flutter_svg.dart";

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 10,
            color: kPrimaryColor.withOpacity(0.20),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: () {}),
        ],
      ),
    );
  }
}
