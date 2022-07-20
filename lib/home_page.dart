import 'package:appgradient/register_page.dart';
import 'package:appgradient/success_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.red.shade900,
          Colors.orange.shade800,
          Colors.orange.shade400,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(children: <Widget>[
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.grey))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        suffix: Icon(Icons.mail_outline,
                                            color: Colors.orange.shade800),
                                        hintText: "Email or Phone number",
                                        hintStyle: const TextStyle(
                                            color: Colors.grey, fontSize: 18),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.grey))),
                                  child: TextField(
                                    obscureText: isVisible ? true : false,
                                    decoration: InputDecoration(
                                        suffix: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                isVisible = !isVisible;
                                              });
                                            },
                                            icon: isVisible
                                                ? Icon(
                                                    Icons
                                                        .visibility_off_outlined,
                                                    color:
                                                        Colors.orange.shade800)
                                                : Icon(
                                                    Icons.visibility_outlined,
                                                    color: Colors
                                                        .orange.shade800)),
                                        hintText: "Password",
                                        hintStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Forgot Password?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18)),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage()));
                                },
                                child: const Text("Register",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900],
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: (() => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SuccessPage()))),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            "Continue with social media",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.orange.shade400,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Facebook",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange.shade200,
                                ),
                                child: Center(
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                        color: Colors.orange.shade800,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                            ],
                          ),
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
                                    color: Colors.orange.shade900,
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
                        ]),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
