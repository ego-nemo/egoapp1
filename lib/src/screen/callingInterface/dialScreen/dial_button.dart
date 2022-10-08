import 'package:egoapp1/size_config.dart';
import 'package:flutter/material.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    required Key key,
    required this.iconSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(20),
        ),
        child: TextButton(
          onPressed: press,
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
