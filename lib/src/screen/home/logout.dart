import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../Firebase/signin_page.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(''),
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
