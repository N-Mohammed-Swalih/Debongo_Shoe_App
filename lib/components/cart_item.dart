import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
//remove the items from the cart
  void removeItemsfromCart() {
    Provider.of<Cart>(context, listen: false).removeItemsfromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text("Rs " + widget.shoe.price),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Qty :  ${widget.shoe.quantity} "),
              IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: removeItemsfromCart,
                  tooltip: "Remove from cart"),
            ],
          ),
        ));
  }
}
