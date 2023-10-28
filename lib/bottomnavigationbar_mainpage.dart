import 'package:flutter/material.dart';
import 'package:fly_high/history.dart';
import 'package:fly_high/homepage.dart';
import 'package:fly_high/message.dart';
import 'package:fly_high/profile.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List pages=[
    homepage("String"),
    history(),
    message(),
    profile(),
  ];
  int currentindex=0;
  void onTap(int index){
    setState(() {
      currentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.history),label: "history"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "message"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
      ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentindex,
        onTap: onTap,
        selectedIconTheme: IconThemeData(color: Colors.red),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedFontSize: 0,
        selectedFontSize: 0,


      ),
      body: pages[currentindex],


    );
  }
}

