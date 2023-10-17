import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/login.png"), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 50),
              child: Container(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w400,
                      fontSize: 50),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 300, left: 35, right: 35),
                child: ListView(scrollDirection: Axis.vertical, children: [
                  Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Column(
                          children: [
                            Text("UserName"),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    fillColor: Colors.grey.shade50,
                                    filled: true,
                                    suffixIcon: Icon(
                                      Icons.email,
                                      color: Colors.black54,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text("Password"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  filled: true,
                                  fillColor: Colors.grey.shade50,
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline),
                                ),
                                onTap: () {},
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Log In",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange.shade400),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CircleAvatar(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.forward_rounded,
                                        size: 30,
                                        color: Colors.limeAccent,
                                      ),
                                      onPressed: () {

                                        Navigator.pop(context);
                                        Navigator.pushNamed(context, "/homepage");

                                      },
                                    ),
                                    radius: 25,
                                    backgroundColor: Colors.orange,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Divider(
                                    color: Colors.black,
                                  )),
                                  Text("OR"),
                                  Expanded(
                                      child: Divider(
                                    color: Colors.black,
                                  )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: CircleAvatar(
                                      radius: 30,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            "img/facebook.png",
                                            fit: BoxFit.fill,
                                          )),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 28,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "img/google.png",
                                          fit: BoxFit.fill,

                                        )),
                                    backgroundColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(

                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(

                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "/screen1");
                                      },
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),

                ]),
              ),
            ),
          ],
        ));
  }
}
