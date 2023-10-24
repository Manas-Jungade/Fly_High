import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:image_picker/image_picker.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  File? _imageFile;


  var name="manas";
  var email="man@gmail.com";
  var address="Enter Your Address";
  var password="123";
  TextEditingController username=TextEditingController();
  TextEditingController emailid=TextEditingController();
  TextEditingController address_loc=TextEditingController();
  TextEditingController passwors_saved=TextEditingController();



  bool edit=false;
  @override
  void initState() {
    // TODO: implement initState
    name=username.text.toString();
    password=passwors_saved.text.toString();
    email=emailid.text.toString();
    address=address_loc.text.toString();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("PROFILE",style: TextStyle(color: Colors.orange,fontSize: 35),),centerTitle: true,),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10,right: 15,left: 15),
            child: Center(
              child: Column(
                children: [
                  Container(alignment: Alignment.topRight,child: CircleAvatar(child:  IconButton(onPressed: (){}, icon: Icon(Icons.logout_rounded,size: 30,)),)),
                  Container(alignment: Alignment.topRight,child: Text("LogOut"),),

                  Stack(
                    children: [
                     if(_imageFile!=null)
                       Container(
                         child: CircleAvatar(radius: 70,backgroundImage: FileImage(_imageFile!),foregroundImage:FileImage(_imageFile!) ,),
                       )
                      else
                       Container(child: CircleAvatar(

                         radius: 70,
                         backgroundImage: AssetImage("img/female.png"),foregroundImage:AssetImage("img/female.png") ,

                       ),),
                       
                      
                        



                      Positioned(
                        bottom: 0,
                        right: 0,
                        child:  Container(
                          decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                          width:35,height:35,child: IconButton(onPressed: (){
                            showModalBottomSheet(context: context, builder: ((builder) => bottomsheet()),);
                        }, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                    child: TextField(
                      onTap: (){setState(() {
                        name="";
                      });},
                      controller: username,
                      enabled: edit,
                      decoration: InputDecoration(prefixIcon: Icon(Icons.person,color: Colors.black,),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: name,enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                    child: TextField(
                     onTap: (){setState(() {
                       email="";
                     });},
                      controller: emailid,
                      keyboardType: TextInputType.emailAddress,
                      enabled: edit,
                      decoration: InputDecoration(prefixIcon: Icon(Icons.email,color: Colors.black,),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: email,enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                    child: TextField(
                      onTap: (){setState(() {
                        password="";
                      });},
                      controller: passwors_saved,
                      enabled: edit,
                      obscureText: false,
                      decoration: InputDecoration(prefixIcon: Icon(Icons.lock,color: Colors.black,),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: password,enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                    child: TextField(
                      onTap: (){setState(() {
                        address="";
                      });},
                      controller: address_loc,
                      enabled: edit,
                      decoration: InputDecoration(prefixIcon: Icon(Icons.pin_drop,color: Colors.black,),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: address,enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){
                        setState(() {
                          edit=true;
                        });
                      }, child: Text("Edit",style: TextStyle(fontSize: 20),))),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (edit && username.text.isNotEmpty && emailid.text.isNotEmpty && passwors_saved.text.isNotEmpty)? (){
                      setState(() {
                        edit=false;
                        name=username.text.toString();
                        password=passwors_saved.text.toString();
                        email=emailid.text.toString();


                      });
                      QuickAlert.show(context: context, type: QuickAlertType.success,text: "Profile Updated Successfully");
                    }:null, child: Text("Save"),style: ButtonStyle(

                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blue),
                      elevation: MaterialStateProperty.all(20),
                      shadowColor:
                      MaterialStateProperty.all(Colors.black)),),







                ],
              ),
            ),
          ),
        ),
    );

  }
  Widget bottomsheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,

      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Choose Profile Photo",style: TextStyle(fontSize: 20,color: Colors.red),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

               IconButton(onPressed: ()=>getimage(source: ImageSource.gallery), icon: Icon(Icons.camera_alt_outlined,size: 50,color: Colors.blue,),tooltip: "Camera",enableFeedback: true,),
                SizedBox(width: 50,),
               IconButton(onPressed: ()=>getimage(source: ImageSource.camera), icon: Icon(Icons.image,size: 50,color: Colors.blue,semanticLabel: "gallery",),tooltip: "Gallery",enableFeedback: true,),

            ],
          )
        ],
      ),
    );
  }
  void getimage({required ImageSource source}) async{
    final file=await ImagePicker().pickImage(source: source);
    if(file?.path !=null){
      setState(() {
        _imageFile= File(file!.path);
      });

    }
  }
}
