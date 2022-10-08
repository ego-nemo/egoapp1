import 'package:egoapp1/MyApp.dart';
import 'package:egoapp1/size_config.dart';
import 'package:flutter/material.dart';

import 'dial_page.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: DialPage(),
    );
  }
}
