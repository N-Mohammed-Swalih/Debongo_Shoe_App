import 'package:debongo_app/components/shoe_tile.dart';
import 'package:debongo_app/views/pages/see_all_items_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/cart.dart';
import '../../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to the cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);

//alert the users,shoesuccesfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(
                "Successfully added!",
              ),
              content: Text(
                "Check your cart",
                style: TextStyle(color: Colors.blue.shade600),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
          //search bar
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.blue.shade600),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.blue.shade600,
                  ),
                ],
              ),
            ),

            //message
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "You are you,Join the movement",
                style: TextStyle(color: Colors.blue.shade600),
              ),
            ),
            //hot picks
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Hot picks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ShoeListPage())))
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //list of the shoes for sale
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  //get a shoe from shop list
                  Shoe shoe = value.getShoeList()[index];
                  //return the shoe
                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
