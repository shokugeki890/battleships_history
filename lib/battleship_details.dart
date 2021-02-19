import 'package:flutter/material.dart';

class BattleshipDetails extends StatelessWidget {
  final String nameDetail, imageDetail, warshipDetail,battleshipDetail;
  BattleshipDetails({this.nameDetail,this.imageDetail,this.warshipDetail, this.battleshipDetail});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailed Info"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.asset('images/$imageDetail', fit: BoxFit.cover,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '$nameDetail',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '$warshipDetail',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
        SizedBox(
          height: 8,
        ),
        Text(
          '$battleshipDetail',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        ],
      ),
    ));
  }
}
