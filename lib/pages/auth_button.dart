import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final credential = await _auth.signInAnonymously();
            print(credential.user?.uid);
          },
          child: const Text("匿名"),
        ),
      ),
    );
  }
}
