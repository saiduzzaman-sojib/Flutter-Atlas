import 'package:flutter/material.dart';

class Responsive  extends StatelessWidget {
  const Responsive ({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize= MediaQuery.of(context).size;
    double screenWidth= screenSize.width;
    double screenHeight= screenSize.height;
    final Orientation orientation= MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsice"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(orientation.toString()),
            // Text(screenHeight.toString()),
            Container(
              height: 150,
              width: 300,
              color: Colors.red,
            ),
            Text("Test text ",
            style: TextStyle(
              fontSize: 25,
              color: Colors.blueGrey,
        
            ),),
            Container(
              height: screenHeight*0.18,
              width: screenWidth*0.6,
              color: const Color.fromARGB(255, 54, 244, 79),
            ),
            Text("Test text ",
            style: TextStyle(
              fontSize: 25*0.3,
              color: Colors.blueGrey,
        
            ),)
          ],
        ),
      ),
    );
  }
}