// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:appgradient/cart_page.dart';

import 'package:appgradient/success_page.dart';

import 'package:flutter/material.dart';

import 'check_cart.dart';

// ignore: must_be_immutable
class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  colors: [Colors.red.shade900, Colors.white, Colors.orange])),
          child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 90, left: 10, right: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back,
                                color: Colors.orange.shade900, size: 30),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SuccessPage()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 90, left: 5, bottom: 10),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Colors.orange.shade900, width: 4),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, bottom: 10),
                                  child: IconButton(
                                    icon: Icon(Icons.search,
                                        color: Colors.orange.shade900,
                                        size: 35),
                                    onPressed: () {},
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 2, top: 10, bottom: 10),
                                child: Text(
                                  "Search Your Location",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //////////////////////////////////     SEARCH
                  Image.asset("images/map.jpg"),
                  Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 2, left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                suffix: Icon(Icons.phone,
                                    color: Colors.orange.shade900),
                                labelText: "Enter Your Phone Number",
                                labelStyle: const TextStyle(
                                    color: Colors.white, fontSize: 22)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 2, left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                suffix: Icon(Icons.location_city_outlined,
                                    color: Colors.orange.shade900),
                                labelText: "Enter Your Destination",
                                labelStyle: const TextStyle(
                                    color: Colors.white, fontSize: 22)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 2, left: 20, right: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                suffix: Icon(Icons.location_city,
                                    color: Colors.orange.shade900),
                                labelText: "Enter Your Pickup Location",
                                labelStyle: const TextStyle(
                                    color: Colors.white, fontSize: 22)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: FloatingActionButton.extended(
                              backgroundColor: Colors.orange.shade900,
                              onPressed: () {
                                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CartPage()));


                              },
                              icon: const Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "Add To Cart",
                                style: TextStyle(fontSize: 22),
                              )),
                        ),
                        const SizedBox(height: 10),
                      ]),

                  ////   FOOTER
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CheckCart()))),
                              icon: const Icon(
                                Icons.shopping_cart_checkout,
                                size: 30,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange.shade900,
                          onPressed: () {},
                          child: const Icon(Icons.lock_clock,
                              size: 30, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange.shade900,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SuccessPage()));
                          },
                          child: const Icon(Icons.home,
                              size: 30, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange.shade900,
                          onPressed: () {},
                          child: const Icon(Icons.work,
                              size: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ));
  }
}
