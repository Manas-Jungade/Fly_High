import 'package:flutter/material.dart';
import 'package:fly_high/homepage.dart';

class signup extends StatefulWidget {
  const signup({super.key});


  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  List ListItem = ["Male", "Female", "Trans"];
  var valuechoose;

  bool ischecked = false;
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(
            image: AssetImage("img/register.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          SingleChildScrollView(
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 35, right: 35),
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: TextField(
                          controller: firstname,
                          decoration: InputDecoration(
                              hintText: "First Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.red,
                              ),
                              suffixIcon:
                                  Icon(Icons.drive_file_rename_outline)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          controller: lastname,
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: Icon(Icons.drive_file_rename_outline),
                            prefixIcon: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(

                          controller: email,
                          decoration: InputDecoration(
                            hintText: "Email ID",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.email),
                            prefixIcon: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.lock),
                            prefixIcon: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 65, right: 65),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: DropdownButton(
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(20),
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text("Gender ->>"),
                            ),
                            dropdownColor: Colors.white,
                            icon: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                            style: TextStyle(color: Colors.black),
                            focusColor: Colors.white,
                            items: ListItem.map((valueItem) {
                              return DropdownMenuItem(
                                child: Text(valueItem),
                                value: valueItem,
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                valuechoose = newValue;
                              });
                            },
                            value: valuechoose,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red),
                            ),
                            Text("  Fields are Mandatory ")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          child: Column(
                            children: [
                              InkWell(
                                child: Text("Read Agreement",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500)),
                                onTap: () {},
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                      checkColor: Colors.white,
                                      value: ischecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          ischecked = value!;
                                        });
                                      }),
                                  Text("I accept the agreement")
                                ],
                              ),
                              ElevatedButton(
                                onPressed: (ischecked &&
                                        firstname.text.isNotEmpty &&
                                        lastname.text.isNotEmpty &&
                                        password.text.isNotEmpty &&
                                        email.text.isNotEmpty)
                                    ? () {
                                        setState(() {
                                          ischecked = true;

                                        });
                                        homepage(firstname.text.toString());

                                        Navigator.pushNamed(context, "/homepage",arguments: firstname.text.toString());

                                      }
                                    : null,
                                child: Text(
                                  "Submit",
                                ),
                                style: ButtonStyle(
                                  visualDensity: VisualDensity.adaptivePlatformDensity,
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blue),
                                    elevation: MaterialStateProperty.all(20),
                                    shadowColor:
                                        MaterialStateProperty.all(Colors.red)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
