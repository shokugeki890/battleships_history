import 'package:flutter/material.dart';



class AboutDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Developer"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(16),
              alignment: Alignment.topCenter,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/my_photo.jpg'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
          ),
          SizedBox(
            height: 50,
            child: Card(
              child: Center(child: Text('Rifqi Hafidh Suryana')),
            ),
          ),
          GestureDetector(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.blueAccent,
                      title: Text(
                        'Developer Info',
                        textAlign: TextAlign.center,
                      ),
                      content: Container(
                        height: 150,
                        child: Column(
                          children: [
                            Text('Biography'),
                            Text('Bekasi, Indonesia'),
                            Text('Student')
                          ],

                        ),
                      ),
                    );
                  });
            },
            child: SizedBox(
              height: 50,
              child: Card(
                child: Center(child: Text('Detailed Info')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
