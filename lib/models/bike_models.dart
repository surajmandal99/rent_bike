import 'package:flutter/material.dart';

class BikeModel extends ChangeNotifier {
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ],
    [
      "Metere" "\n" "Royal Enfield",
      "699",
      "assets/images/bike1.png",
      Colors.red
    ],
    [
      "Scout Bobber" "\n" "Indian",
      "499",
      "assets/images/bike2.png",
      Colors.orange
    ],
    [
      "Rebel 1100" "\n" "Honda",
      "1199",
      "assets/images/bike3.png",
      Colors.green
    ],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
