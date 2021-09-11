import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: 
          Column(children: [
            SizedBox(height: 80,),
            Image.asset('assets/dog_dog.png', width: 250, ),
            SizedBox(height: 50,),
            Text("ดีดี้ & เปาเปา", style: TextStyle(color: Color(0xFF7FBCAB), fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'ImStamp',),),
            SizedBox(height: 5,),
            Text("081-586-6385", style: TextStyle(color: Color(0xFF7FBCAB), fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'ImStamp',),),
          ],),
        )
      ],
    );
  }
}