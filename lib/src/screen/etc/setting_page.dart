import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../Firebase/signin_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black26,
        title: const Text('setting'),
      actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              // ログアウト処理
              // 内部で保持しているログイン情報等が初期化される
              // （現時点ではログアウト時はこの処理を呼び出せばOKと、思うぐらいで大丈夫です）
              await FirebaseAuth.instance.signOut();
              // ログイン画面に遷移＋チャット画面を破棄
              await Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) {
                  return SignInPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.white;

  @override
  String? get barrierLabel => null;

  final Widget child;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // ここを変えればいろんなトランジションにできるぞ
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(
        milliseconds: 1000, // ミリ秒でトランジションにかかる時間を指定
      );
}
