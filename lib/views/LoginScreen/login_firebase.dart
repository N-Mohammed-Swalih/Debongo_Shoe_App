import 'package:debongo_app/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../../firebase_helper/firebase_db.dart';
import 'registration_fir.dart';

class LoginFire extends StatefulWidget {
  const LoginFire({super.key});

  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Username"),
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
              controller: pass,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                String mail = email.text.trim();
                String pwd = pass.text.trim();

                FirebaseHelper()
                    .signIn(email: mail, password: pwd)
                    .then((result) {
                  if (result == null) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: const Text('Login')),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register_fire()));
              },
              child: const Text("Not a user ? Register here!!"))
        ],
      ),
    );
  }
}
