import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/icon_card.dart';

class DBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Spacer(),
                      IconCard(
                        icon: "assets/icons/sun.svg",
                      ),
                      IconCard(
                        icon: "assets/icons/icon_2.svg",
                      ),
                      IconCard(
                        icon: "assets/icons/icon_3.svg",
                      ),
                      IconCard(
                        icon: "assets/icons/icon_4.svg",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 20,
                      color: kPrimaryColor.withOpacity(0.30),
                    ),
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png"),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
