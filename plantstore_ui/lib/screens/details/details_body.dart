import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/icon_card.dart';
import 'components/image_and_icons.dart';

class DBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsCard(size: size),
          
        ],
      ),
    );
  }
}
