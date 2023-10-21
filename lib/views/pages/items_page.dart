import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: 12,
      padding: const EdgeInsets.only(top: 30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 50,
          mainAxisExtent: 100,
          mainAxisSpacing: 15),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage("")),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Row(
          children: [
            SizedBox(
              width: 50,
            ),
            SizedBox(
              width: 50,
            ),
            Text(""),
          ],
        ),
      ),
    ));
  }
}
