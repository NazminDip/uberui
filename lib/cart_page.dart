import 'package:appgradient/book_page.dart';
import 'package:appgradient/success_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _count = 250;
  void increase() {
    setState(() {
      _count++;
    });
  }

  void decrease() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Cart Item"),
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 5),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                  tooltip: "Logout",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.orange.shade800,
                  )),
            ),
          )),
      body: SafeArea(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle),
                child: IconButton(
                  icon: const Icon(Icons.car_rental,
                      color: Colors.black, size: 50),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SuccessPage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Container(
                  width: 250,
                  height: 50,
                  color: Colors.white,
                  // decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(80)

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "$_count",
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orange.shade900, width: 3),
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: increase,
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orange.shade900, width: 3),
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: decrease,
                            child: const Icon(
                              Icons.minimize_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                        child: Container(
                            width: 65,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange.shade900,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartPage()));
                              },
                              child: const Center(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      ),
                    ],
                  )),
            ),

            /////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
