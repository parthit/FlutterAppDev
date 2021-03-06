import 'package:flutter/material.dart';
import 'package:plantstore_ui/constants.dart';

class TitleWIthMoreBtn extends StatelessWidget {
  final String text;
  final Function pressed;
  TitleWIthMoreBtn({this.text, this.pressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithUnderline("Recommended"),
          Spacer(),
          FlatButton(
              onPressed: pressed,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              child: Text(
                text,
                style: TextStyle(color: kBackgroundColor),
              ))
        ],
      ),
    );
  }
}

class TitleWithUnderline extends StatelessWidget {
  final String text;
  TitleWithUnderline(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
