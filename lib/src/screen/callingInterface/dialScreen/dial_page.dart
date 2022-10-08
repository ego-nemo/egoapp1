import 'package:egoapp1/size_config.dart';
import 'package:flutter/material.dart';

import 'dial_button.dart';

class  DialPage extends StatefulWidget {
  const DialPage({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<DialPage> {
  get key => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna williams",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            const Text(
              "Calling…",
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(
              key: key,
            ),
            const Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  iconSrc: "assets/icons/Icon Mic.svg",
                  text: "Audio",
                  press: () {},
                  key: key,
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Volume.svg",
                  text: "Microphone",
                  press: () {},
                  key: key,
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Video.svg",
                  text: "Video",
                  press: () {},
                  key: key,
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Message.svg",
                  text: "Message",
                  press: () {},
                  key: key,
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon User.svg",
                  text: "Add contact",
                  press: () {},
                  key: key,
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  text: "Voice mail",
                  press: () {},
                  key: key,
                ),
              ],
            ),
            VerticalSpacing(
              key: key,
            ),
          ],
        ),
      ),
    );
  }
}
