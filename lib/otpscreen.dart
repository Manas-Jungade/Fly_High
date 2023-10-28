import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class otpscreen extends StatefulWidget {
  const otpscreen({super.key});

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  int number=8855043347;
  var otp;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Back",style: TextStyle(color: Colors.blue),)),
                  Text("OTP Verification",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 40),),
                  SizedBox(height: 15,),
                  Text("Enter the verification code send to : \n                   $number",style: TextStyle(color: Colors.black,fontSize: 15),),
                  SizedBox(height: 20,),
                  OtpTextField(
                    numberOfFields: 6,
                    autoFocus: true,
                    focusedBorderColor: Colors.black,
                    onSubmit: (code){
                      otp=code;
                      print(otp);
                    },
                  ),
                  SizedBox(height: 60,),
                  ElevatedButton(onPressed: (){}, child: Text("Submit"),style: ButtonStyle(elevation: MaterialStateProperty.all(10)),),


                ],
              ),
            ),
          ),


    );
  }
}
