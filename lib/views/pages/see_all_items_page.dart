import 'package:debongo_app/components/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/cart.dart';
import '../../models/shoe.dart';

class ShoeListPage extends StatefulWidget {
  const ShoeListPage({super.key});

  @override
  State<ShoeListPage> createState() => _ShoeListPageState();
}

class _ShoeListPageState extends State<ShoeListPage> {
  //add shoe to the cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);

//alert the users,shoesuccesfully added
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Successfully added!"),
              content: Text("Check your cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
            appBar: AppBar(
              centerTitle: true,
              iconTheme: const IconThemeData(
                color: Colors.black, //change your color here
              ),
              backgroundColor: Colors.white,
              title: const Text(
                "Men's Footwear",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: GridView.builder(
                itemCount: value.getShoeList().length,
                padding: const EdgeInsets.only(top: 30),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 50,
                    mainAxisExtent: 300,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  Shoe numberofshoe = value.getShoeList()[index];
                  return ShoeTile(
                      shoe: numberofshoe,
                      onTap: () => addShoeToCart(numberofshoe));
                })));
  }
}
