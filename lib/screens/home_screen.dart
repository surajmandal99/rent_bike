import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_bike/botton_navigation/bottom_naviagtion.dart';
// import 'package:rent_bike/components/product_category.dart';
import 'package:rent_bike/models/bike_models.dart';
import 'package:rent_bike/screens/bike_details.dart';

import '../components/bike_item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 140,
                  height: 50,
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Text(
                          "Abvi Tiwari",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),

                //textinput field search bar

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      hintText: "Search Bike",
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // vertical

                Expanded(
                  child: Consumer<BikeModel>(
                    builder: (context, value, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(12),
                        itemCount: value.shopItems.length,
                        itemBuilder: (context, index) {
                          return BikeItemTile(
                              itemName: value.shopItems[index][0],
                              bikePrice: value.shopItems[index][1],
                              imagePath: value.shopItems[index][2],
                              color: value.shopItems[index][3],
                              onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) {
                                    return BikeDetails(
                                      bikeName: value.shopItems[index][0],
                                      imagePath: value.shopItems[index][2],
                                      bikePrice: value.shopItems[index][1],
                                    );
                                  })));
                        },
                      );
                    },
                  ),
                ),

                //RECENTLY VIEWED
                const SizedBox(
                  height: 10,
                ),
                const Text("Recently Viewed"),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/bike1.png'),
                              )),
                        ),
                        title: const Text("Hayabusa" "\n" "2000/per day"),
                        trailing: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(2)),
                            child: const Center(
                              child: Text(
                                "Available",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/bike1.png'),
                              )),
                        ),
                        title: const Text("Hayabusa" "\n" "2000/per day"),
                        trailing: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 219, 205, 205),
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(2)),
                            child: const Center(child: Text("Booked"))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/bike1.png'),
                              )),
                        ),
                        title: const Text("Hayabusa"),
                        trailing: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(2)),
                            child: const Center(
                                child: Text(
                              "Available",
                              style: TextStyle(color: Colors.white),
                            ))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ///bottom navigation bar

          bottomNavigationBar: const ButtonNavigationBar()),
    );
  }
}
