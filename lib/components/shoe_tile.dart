import 'package:debongo_app/views/pages/product_page.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductPage()));
      },
      child: Container(
          margin: const EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width * 0.79,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //shoe images
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  shoe.imagePath,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),

              //description
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  shoe.description,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              //price+details
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //shoe name
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            shoe.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //price
                          Text(
                            "Rs " + shoe.price,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ]),

                    //plus button

                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        height: 60,
                        width: 50,
                        padding: const EdgeInsets.only(),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
