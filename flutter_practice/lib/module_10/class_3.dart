import 'package:flutter/material.dart';

class Module10Class3 extends StatelessWidget {
  const Module10Class3({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    final Orientation orientation = MediaQuery.of(context).orientation;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: orientation == Orientation.landscape
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    color: Colors.pink,
                  ),
                  Text(
                    'Test Text',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.3,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    'Test Text 2',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    color: Colors.pink,
                  ),
                  Text(
                    'Test Text',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.7,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    'Test Text 2',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}