import 'package:appgradient/book_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

// ignore: must_be_immutable
class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  List<Rider> riders = [
    const Rider(
        ridename: 'CYCLE',
        rideimg:
            "https://i.pinimg.com/564x/68/7a/1e/687a1e09f790a1ddf6af72f6532aaed7.jpg"),
    const Rider(
        ridename: 'BIKE',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx8kmRSq4QsQ6TEN03uEUrayYzT3pfav3TdQ&usqp=CAU"),
    const Rider(
        ridename: 'BUS',
        rideimg:
            "https://p.kindpng.com/picc/s/555-5552601_bus-side-bus-side-icon-png-transparent-png.png"),
    const Rider(
        ridename: 'CAR',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG99UB9y8FArYR3EENzq1b41kPgi7rSLYIuPy4NWkmSLk3qBDUYL0JJQZazmvV8PWqAZw&usqp=CAU"),
    const Rider(
        ridename: 'TAXI',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnbI-fvgL16mksmy4mN6QPuvlwnNlYt1p_btUVxr5QGg75GiY1TP41YyOHz5TxycrjHo&usqp=CAU"),
    const Rider(
      ridename: 'RICKSHAW',
      rideimg:
          "https://media.istockphoto.com/vectors/cycle-rickshaw-icon-transportation-related-vector-vector-id1303123272?b=1&k=20&m=1303123272&s=170667a&w=0&h=sX4rxCfxfIh7WTgCwgiavCvNza3BNArcKzJDD_sHbN4=",
    ),
    const Rider(
        ridename: 'AUTO',
        rideimg:
            "https://cdn.create.vista.com/api/media/medium/452056154/stock-vector-list-commercial-landed-vehicles-transportation?token="),
    const Rider(
        ridename: 'AIRCRAFT',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_5F7cqKucxYWV8fk-uIqk6WTfrXFpArqhGg&usqp=CAU"),
    const Rider(
        ridename: 'BOAT',
        rideimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqBqRhXaRP37BG-BmiqAw4sHmS3uTZCHrKEQ&usqp=CAU"),
    const Rider(
        ridename: 'TRAIN',
        rideimg:
            "https://png.pngtree.com/png-vector/20190515/ourmid/pngtree-train-icon-png-image_1043136.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Select Your Transport"),
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
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.orange.shade800,
                )),
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.red.shade900,
            Colors.orange.shade800,
            Colors.orange.shade400,
          ])),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: riders.length,
            itemBuilder: (context, index) {
              final ride = riders[index];
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.orange,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: GridTile(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.orange,
                                    width: 5,
                                  ),
                                  shape: BoxShape.circle),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BookPage()));
                                },
                                child: Image(
                                  width: 2,
                                  height: 1,
                                  // fit: BoxFit.cover,
                                  image: NetworkImage(ride.rideimg),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            ride.ridename,
                            style: TextStyle(
                                color: Colors.orange.shade900,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))));
            },
          )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(color: Colors.orange.shade900, height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Rider {
  final String ridename;
  final String rideimg;

  const Rider({
    required this.ridename,
    required this.rideimg,
  });
}
