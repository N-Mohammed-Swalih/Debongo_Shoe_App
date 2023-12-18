import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: GNav(
          color: Colors.blue[400],
          gap: 9,
          activeColor: Colors.blue.shade700,
          tabActiveBorder: Border.all(color: const Color.fromRGBO(255, 255, 255, 1)),
          tabBackgroundColor: Colors.blue.shade100,
          tabBorderRadius: 36,
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: "Orders",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            ),
          ]),
    );
  }
}
