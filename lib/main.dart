import 'package:egoapp1/firebase_options.dart';
import 'package:egoapp1/signup_page.dart';
import 'package:egoapp1/src/screen/account_page.dart';
import 'package:egoapp1/src/screen/call_page.dart';
import 'package:egoapp1/src/screen/chat_page.dart';
import 'package:egoapp1/src/screen/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth/authentication.dart';

const Color kAccentColor = Color.fromARGB(255, 141, 100, 254);
const Color kBackgroundColor = Color(0xFF19283D);
const Color kTextColorPrimary = Color(0xFFECEFF1);
const Color kTextColorSecondary = Color(0xFFB0BEC5);
const Color kButtonColorPrimary = Color(0xFFECEFF1);
const Color kButtonTextColorPrimary = Color(0xFF455A64);
const Color kIconColor = Color(0xFF455A64);

void main() async {
  // Firebaseの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
      ),
      home: const ChatPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: _SignInForm(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64),
                child: _Footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* ----- ヘッダー関連 ----- */

class _HeaderCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height * 0.5)
      ..quadraticBezierTo(
        size.width * 0.55,
        size.height,
        size.width,
        size.height * 0.6,
      )
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class _HeaderBackground extends StatelessWidget {
  final double height;

  const _HeaderBackground({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _HeaderCurveClipper(),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              Color(0xFFFD9766),
              Color.fromARGB(255, 85, 88, 248),
            ],
            stops: [0, 1],
          ),
        ),
      ),
    );
  }
}

class _HeaderCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    canvas.drawCircle(
      Offset(size.width * 0.25, size.height * 0.4),
      12,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width * 0.75, size.height * 0.2),
      12,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class _HeaderTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Buddy',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: kTextColorPrimary,
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          'Sign in to continue',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: kTextColorPrimary),
        ),
      ],
    );
  }
}

class HeaderSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpPage()));
      },
      child: const Text(
        'SignUp',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double height = 320;
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: _HeaderBackground(height: height),
          ),
          const Align(
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 128),
              child: _HeaderTitle(),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: HeaderSignUpButton(),
          ),
        ],
      ),
    );
  }
}

/* ----- SignInフォーム関連 ----- */

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(color: kTextColorSecondary),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kAccentColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kTextColorSecondary,
          ),
        ),
      ),
      obscureText: obscureText,
      onTap: () {},
    );
  }
}

class _SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController(text: '');
    final passWordController = TextEditingController(text: '');

    return Column(
      children: [
        CustomTextField(
          controller: emailController,
          labelText: 'Email',
          hintText: 'your email address goes here',
          obscureText: false,
        ),
        const SizedBox(height: 48),
        CustomTextField(
          controller: passWordController,
          labelText: 'Password',
          hintText: 'your password goes here',
          obscureText: true,
        ),
        const SizedBox(height: 4),
        Text(
          'Forgot Password?',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(height: 48),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: kButtonTextColorPrimary,
              backgroundColor: kButtonColorPrimary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () async {
              final result =
                  await Authentication.instance.signInWithEmailAndPassword(
                emailController.text,
                passWordController.text,
                codeSent: (String verificationId, int? resendToken) {},
                codeAutoRetrievalTimeout: (String verificationId) {},
                verificationCompleted: (PhoneAuthCredential credential) {},
                verificationFailed: (FirebaseAuthException e) {},
              );
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatPage()));
              // ログイン成功なら次の画面へ遷移
              if (result) {}
            },
            child: Text(
              'Sign in',
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kButtonTextColorPrimary, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'OR',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(height: 16),
        Text(
          'Connect with',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorPrimary),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
            Container(
              color: kTextColorSecondary,
              width: 1,
              height: 16,
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}

/* ----- フッター関連 ----- */

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have Account?',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(width: 4),
        Text(
          'Sign up',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorPrimary),
        ),
      ],
    );
  }
}

