import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  //const detailPage({ Key? key }) : super(key: key);

  // ประกาศตัวแปรเพื่อรับค่า
  final v1,v2,v3,v4;
  detailPage(this.v1,this.v2,this.v3,this.v4);

  @override
  _detailPageState createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {

  // var _v1, _v2, _v3, _v4;
  var _v1, _v3, _v4, _header;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _v1 = widget.v1;
    _header = 'รายละเอียด - ' + _v1 ;
    // _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_header, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'ImStamp',)),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Image.network(_v3),
          SizedBox(height: 20),
          Text(_v1, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orangeAccent, fontFamily: 'ImStamp')),
          SizedBox(height: 20),
          // Text(_v2),
          Text(_v4, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.orangeAccent, fontFamily: 'ImStamp'))
        ],),
      )
    );
  }
}