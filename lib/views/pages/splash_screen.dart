import 'package:debongo_app/views/LoginScreen/login_firebase.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Image.asset(
                "assets/logo.png",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            const SizedBox(
              height: 100,
            ),

            //title

             Text(
              "You are you.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade600,
                fontSize: 25,
              ),
            ),

            //subtile
             Text(
              "Join the moment",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.blue.shade600,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //start button
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const LoginFire()),
                      ));
                },
                child: const Text(
                  "Shop Now!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
