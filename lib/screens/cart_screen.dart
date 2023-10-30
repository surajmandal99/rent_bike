import 'package:flutter/material.dart';

import '../botton_navigation/bottom_naviagtion.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const ButtonNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 12),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/back_arrow.png')),
                      const SizedBox(
                        width: 33,
                      ),
                      Container(
                        width: 274,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black)),
                        child: const Center(
                            child: Text(
                          "Check Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                //date and calender
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 330,
                    height: 210,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 222, 222),
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              title: const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("Start Date" "\n" "09-06-2021"),
                              ),
                              trailing: Container(
                                  child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.black,
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
                            child: const ListTile(
                              title: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("End Date" "\n" "12-06-2021"),
                              ),
                              trailing: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //apply coupon

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Apply Coupon",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                //details

                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),

                const ListTile(
                  leading: Text("Days"),
                  trailing: Text('4'),
                ),
                const ListTile(
                  leading: Text("Rent"),
                  trailing: Text('59996'),
                ),
                const ListTile(
                  leading: Text("Additional items"),
                  trailing: Text('6400'),
                ),
                const ListTile(
                  leading: Text("Coupon Discount"),
                  trailing: Text('396'),
                ),
                const Divider(
                  thickness: 2,
                ),
                const ListTile(
                  leading: Text(
                    "Total Amount",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  trailing: Text('1200'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "PAY",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
