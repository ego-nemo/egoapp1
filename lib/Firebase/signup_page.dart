import 'package:egoapp1/auth/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../MyApp.dart';
import '../main.dart';
import 'signin_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _SignUpForm(),
    );
  }
}

class _SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginEmail = TextEditingController(text: '');
    final loginPhone = TextEditingController(text: '');
    final loginPassword = TextEditingController(text: '');
    final userNameText = TextEditingController(text: '');

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 150),
          CustomTextField(
            controller: userNameText,
            labelText: 'UserName',
            hintText: 'your username goes here',
            obscureText: false,
          ),
          const SizedBox(height: 48),
          CustomTextField(
            controller: loginEmail,
            labelText: 'Email',
            hintText: 'your email address goes here',
            obscureText: false,
          ),
          const SizedBox(height: 48),
          CustomTextField(
            controller: loginPhone,
            labelText: 'Phone',
            hintText: 'your Phone goes here',
            obscureText: true,
          ),
          const SizedBox(height: 48),
          CustomTextField(
            controller: loginPassword,
            labelText: 'Password',
            hintText: 'your password goes here',
            obscureText: true,
          ),
          const SizedBox(height: 4),
          Text(
            '',
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
                Authentication.instance.registerWithEmailAndPassword(
                    loginEmail.text, loginPassword.text);
              },
              child: Text(
                'Sign Up',
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
      ),
    );
  }
}

class _userFromFirebaseUser {
  _userFromFirebaseUser(User? user);
}
