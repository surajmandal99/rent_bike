import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BikeItemTile extends StatelessWidget {
  final String itemName;
  final String bikePrice;
  final String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  void Function()? onPressed;

  BikeItemTile({
    super.key,
    required this.itemName,
    required this.bikePrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 225,
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(16)),
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // bike image
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    imagePath,
                    alignment: Alignment.center,
                    height: 160,
                    width: 143,
                  ),
                ),

                // bike name
                Text(
                  itemName,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),

                MaterialButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Text(
                      " $bikePrice/ per day",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
