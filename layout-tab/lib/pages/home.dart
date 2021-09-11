import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: FutureBuilder(builder: (context, snapshot) {
          var data = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return MyBox(data[index]['title'], data[index]['subtitle'], data[index]['URL'], data[index]['detail']);
            },
            itemCount: data.length, );

      },
      future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
      
      ),
    );
  }
    Widget MyBox(String title, String subtitle, String URL, String detail) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(20),
        // color: Colors.blue[100],
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.blue[100],
          image: DecorationImage(
            image: NetworkImage(URL),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.50), BlendMode.darken),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              offset: Offset(3,3),
              blurRadius: 3,
              spreadRadius: 0,
            )
          ],
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.orange, fontWeight: FontWeight.bold, fontFamily: 'ImStamp'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: Colors.orangeAccent, fontFamily: 'ImStamp'),
            ),
            TextButton(onPressed: () {
              print("Next Page >>>");
              Navigator.push(context, MaterialPageRoute(builder: (context)=> detailPage(title,subtitle,URL,detail)));
            }, 
              child: Text("อ่านต่อ", style: TextStyle(fontFamily: 'ImStamp')))
          ],
        ),
      ),
    );
  }
}