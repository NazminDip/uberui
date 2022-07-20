import 'package:appgradient/home_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade900,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange.shade800,
          Colors.orange,
          Colors.orange.shade900
        ])),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90, right: 310),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade100, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Colors.orange.shade900, size: 30),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      suffix: Icon(Icons.person, color: Colors.grey),
                      labelText: "Enter Your Name",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 22)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      suffix: Icon(Icons.phone, color: Colors.grey),
                      labelText: "Enter Your Phone Number",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 22)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      suffix: Icon(Icons.mail, color: Colors.grey),
                      labelText: "Enter Your Gmail",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 22)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffix: Icon(Icons.lock_open, color: Colors.grey),
                      labelText: "Enter Your Password",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 22)),
                ),
              ),
              const SizedBox(height: 50),
              FloatingActionButton.extended(
                  backgroundColor: Colors.orange,
                  onPressed: () {},
                  label: const Text(
                    "Register Now",
                    style: TextStyle(fontSize: 30),
                  )),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade400,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
