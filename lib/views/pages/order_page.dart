import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/cart.dart';
import '../../models/shoe.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heading of the page
                  Text(
                    "My Orders",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual items
                      Shoe individualShoe = value.getUserCart()[index];
                    },
                  ))
                ],
              ),
            ));
  }
}
