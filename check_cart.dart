import 'package:appgradient/book_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

// ignore: must_be_immutable
class CheckCart extends StatefulWidget {
  const CheckCart({Key? key}) : super(key: key);

  @override
  State<CheckCart> createState() => _CheckCartState();
}

class _CheckCartState extends State<CheckCart> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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

  List<Poribohon> pori = [
    const Poribohon(
        cName: 'Bus',
        rideimg:
            "https://png.pngtree.com/png-vector/20190515/ourmid/pngtree-train-icon-png-image_1043136.jpg",
        cPrice: '250'),
    const Poribohon(
        cName: 'Car',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG99UB9y8FArYR3EENzq1b41kPgi7rSLYIuPy4NWkmSLk3qBDUYL0JJQZazmvV8PWqAZw&usqp=CAU",
        cPrice: '250'),
    const Poribohon(
        cName: 'Auto',
        rideimg:
            "https://cdn.create.vista.com/api/media/medium/452056154/stock-vector-list-commercial-landed-vehicles-transportation?token=",
        cPrice: '250'),
    const Poribohon(
        cName: 'Bike',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx8kmRSq4QsQ6TEN03uEUrayYzT3pfav3TdQ&usqp=CAU",
        cPrice: '250'),
    const Poribohon(
        cName: 'Cycle',
        rideimg:
            "https://i.pinimg.com/564x/68/7a/1e/687a1e09f790a1ddf6af72f6532aaed7.jpg",
        cPrice: '250'),
    const Poribohon(
        cName: 'Car',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG99UB9y8FArYR3EENzq1b41kPgi7rSLYIuPy4NWkmSLk3qBDUYL0JJQZazmvV8PWqAZw&usqp=CAU",
        cPrice: '250'),
    const Poribohon(
        cName: 'Auto',
        rideimg:
            "https://cdn.create.vista.com/api/media/medium/452056154/stock-vector-list-commercial-landed-vehicles-transportation?token=",
        cPrice: '250'),
    const Poribohon(
        cName: 'Taxi',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnbI-fvgL16mksmy4mN6QPuvlwnNlYt1p_btUVxr5QGg75GiY1TP41YyOHz5TxycrjHo&usqp=CAU",
        cPrice: '250'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text(
            "Car List",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.orange,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 5),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.orange.shade800,
                  )),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: pori.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 250,
                height: 50,
                color: Colors.white,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        width: 3,
                        height: 1,
                        // fit: BoxFit.cover,
                        image: NetworkImage(pori[index].rideimg),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      pori[index].cName,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "$_count",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.orange.shade900, width: 3),
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
                        border:
                            Border.all(color: Colors.orange.shade900, width: 3),
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
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text(
                                "Your Rent Car is Added",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              backgroundColor: Colors.orange.shade900,
                            ));
                          },
                          child: const Center(
                            child: Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ),
                ]),
              ),
            );
          },
        ),
        ///////////////////////// FOOTER
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(50),
          child: FloatingActionButton.extended(
              backgroundColor: Colors.orange.shade900,
              onPressed: () {},
              label: const Text(
                "Checkout",
                style: TextStyle(color: Colors.white, fontSize: 22),
              )),
        ));
  }
}

class Poribohon {
  final String cName;
  final String rideimg;
  final String cPrice;

  const Poribohon({
    required this.cName,
    required this.rideimg,
    required this.cPrice,
  });
}
