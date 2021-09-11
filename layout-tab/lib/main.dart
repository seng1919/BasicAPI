import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(ke//y: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "5 Popular Dogs",
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  //const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    ContactPage(),
  ]; // เก็บค่าได้หลายค่า เริ่มนับบจาก 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5 สุนัขที่เป็นที่นิยม", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'ImStamp',)),
        backgroundColor: Colors.orange,
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // หน้าปัจจุบันที่เลือก
        items: [
          // หน้าแต่ละหน้ามีไอคอนอะไร
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าแรก"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: "ติดต่อเรา"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedLabelStyle: TextStyle(fontFamily: 'ImStamp'),
        unselectedLabelStyle: TextStyle(fontFamily: 'ImStamp'),
      ),
    );
  }
}
