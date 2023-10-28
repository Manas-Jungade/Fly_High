import 'package:flutter/material.dart';
import 'package:fly_high/profile.dart';

class homepage extends StatefulWidget {
  var firstname;
  homepage(this.firstname);
  @override
  State<homepage> createState() => _homepageState(firstname);
}

class _homepageState extends State<homepage> {
  var firstname;
  _homepageState(this.firstname);


  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 55,
                ),
                Text(arg.toString())
              ],
            ),
          ),
        )
      ],
    );
  }
}
