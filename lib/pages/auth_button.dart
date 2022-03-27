import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleAuthButton(
              text: "Googleでログイン",
              onPressed: () {},
              // style: AuthButtonStyle(),
            ),
            const SizedBox(height: 24.0),
            TwitterAuthButton(
              text: "Twitterでログイン",
              onPressed: () {},
              // style: AuthButtonStyle(),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              // style: ButtonStyle(),
              onPressed: () async {
                final credential = await _auth.signInAnonymously();
                print(credential.user?.uid);
              },
              child: const Text("後で登録する"),
            ),
          ],
        ),
      ),
    );
  }
}
