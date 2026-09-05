import 'package:flutter/material.dart';

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 2,
          ),
          itemCount: 20,
          itemBuilder: (contex,index){
            return Card(
              color: Colors.pink.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Text('Cash out',style: TextStyle(fontSize: 20),),
                ],
              ),
            );
          }
        ),

    //   GridView.count(
    //     crossAxisCount: 3,
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,

    //   children: [
    //     Container(
    //       color: Colors.red,
    //     ),
    //     Container(
    //       color: Colors.deepPurple,
    //     ),
    //     Container(
    //       color: Colors.green,
    //     ),
    //     Container(
    //       color: Colors.cyanAccent,
    //     ),
    //     Container(
    //       color: Colors.red,
    //     ),
    //     Container(
    //       color: Colors.deepPurple,
    //     ),
    //     Container(
    //       color: Colors.green,
    //     ),
    //     Container(
    //       color: Colors.cyanAccent,
    //     ),
    //   ],
      
    //   ),
    );
  }
}