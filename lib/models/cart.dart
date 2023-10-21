import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of the shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: "Ace",
        price: "1295",
        imagePath: "assets/Men/ace-1295.jpg",
        description: "Live with ace styish lifestyle"),
    Shoe(
        name: "Active",
        price: "415",
        imagePath: "assets/Men/active-415.jpg",
        description: "Live with active styish lifestyle"),
    Shoe(
        name: "Armor",
        price: "1395",
        imagePath: "assets/Men/armor-1395.jpg",
        description: "Live with armor stylish lifestyle"),
    Shoe(
        name: "Besty",
        price: "777",
        imagePath: "assets/Men/besty-1395.jpg",
        description: "Live with besty lifestyle"),
    Shoe(
        name: "Brighty",
        price: "345",
        imagePath: "assets/Men/brighty-345.jpg",
        description: "Live with bright lifestyle"),
  ];

  //list of items in users cart

  List<Shoe> userCart = [];

  //get list of the shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to the cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from the cart
  void removeItemsfromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
