import 'package:flutter/material.dart';

import '../firebase_helper/firebase_db.dart';
import 'LoginScreen/login_firebase.dart';

class HomeFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FirebaseHelper().signOut().then((result) => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginFire())));
            },
            child: Text("SignOut")),
      ),
    );
  }
}
