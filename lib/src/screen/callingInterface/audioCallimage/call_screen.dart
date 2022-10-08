
import 'package:egoapp1/size_config.dart';
import 'package:egoapp1/src/screen/callingInterface/dialScreen/body.dart';
import 'package:flutter/material.dart';

class call_screen extends StatelessWidget {
  const call_screen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}