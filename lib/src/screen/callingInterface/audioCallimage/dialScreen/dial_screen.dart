import 'package:egoapp1/MyApp.dart';
import 'package:egoapp1/size_config.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
