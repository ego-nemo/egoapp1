import 'package:firebase_auth/firebase_auth.dart';

/// 認証系のロジックをまとめたクラス
/// 呼び出し方：Authentication.instance.HogeHoge()
class Authentication {
  /// シングルトン
  static final Authentication instance = Authentication._();
  Authentication._();

  /// FirebaseAuthのインスタンス
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// 認証に成功した自分自身のUserデータ
  late User myUser;

  /// Eメールとパスワードから新規ユーザを生成するメソッド
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      // 新規ユーザ登録
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // ユーザ登録チェック
      if (result.user == null) {
        return false;
      }

      // 認証に成功したら自分自身のUserデータとして設定
      myUser = result.user!;

      return true;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (result.user == null) {
        print('失敗');
        return false;
      }

      myUser = result.user!;
      print('成功');
      return true;
    } catch (error) {
      print(error.toString());
      print('失敗');
      return false;
    }
  }
}
