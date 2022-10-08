import 'package:flutter/material.dart';

import '../dialScreen/dial_page.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image
        Image.network(
          'https://images.app.goo.gl/NaaCftL16hQH9rPBA',
          fit: BoxFit.cover,
        ),
        // Black Layer
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Test \nname",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.white),
                ),
                Text(
                  "Incoming 00:01".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.mic),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 48,
                    ),
                    IconButton(
                      icon: const Icon(Icons.call_end),
                      onPressed: () {
                        var push = Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const DialPage())));
                      },
                      color: Colors.red,
                      iconSize: 48,
                    ),
                    IconButton(
                      icon: const Icon(Icons.volume_up),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 48,
                    )

                    //RoundedButton(
                    //press: () {},
                    //color:Color.white,
                    //iconColor: Colors.white,
                    //iconSrc: 'assets/icons/Icon Mic.svg',
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
