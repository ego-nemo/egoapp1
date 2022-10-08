import 'package:egoapp1/size_config.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required Key key,
    required this.size,
    required this.iconSrc,
    required this.color,
    required this.iconColor,
    required this.press,
    required Null Function() onPressed,
  }) : super(key: key);

  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(64),
      width: getProportionateScreenWidth(64),
      child: Container(
        padding: const EdgeInsets.symmetric(),
        child: TextButton(
          onPressed: press,
          child: build(context),
        ),
      ),
    );
  }
}
