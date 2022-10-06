import 'dart:html';

import 'package:egoapp1/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessElement {
  const RoundedButton({
    required Key key,
    this.size = 64,
    required this.iconSrc,
    required this.color,
    required this.iconColor,
    required this.press,
  }) : super(key: key);

  @override
  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      child: FlatButton(
        padding: EdgeInsets.all(
          15 / 64 * size),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: press,
        child: SvgPicture.asset(iconSrc, color: iconColor),
      ),
    );
  }
}
