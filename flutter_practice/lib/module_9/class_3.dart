import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Class 3',style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,


        ),),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            //borderRadius:BorderRadiusGeometry.all(Radius.circular(3)),
            //borderRadius:BorderRadius.only(topRight: Radius.circular(4)),
            ),
            ),
            onPressed: (){}, child: Text('Button 1')),
            SizedBox(height: 20,),
            SizedBox(
              //width: 200,
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              //borderRadius:BorderRadiusGeometry.all(Radius.circular(3)),
              //borderRadius:BorderRadius.only(topRight: Radius.circular(4)),
              ),
              ),
              onPressed: (){
                print("Clicked Button 2");
              }, child: Text('Button 2')),
            ),
            SizedBox(height: 20,),
            OutlinedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black54,
            foregroundColor: Colors.white,
            ),
            onPressed: (){}, child: Text('Submit')),
            SizedBox(height: 20,),
            TextButton(
            onPressed: (){
              print("Read more button Clicked");
            }, child: Text('Read more..')),

            Icon(Icons.access_alarms,color: Colors.black,size: 50,),
            IconButton(onPressed: (){print("Call Icon clicked");}, icon: Icon(Icons.call,
            color: Colors.green,size: 30,)),
            GestureDetector(
            onTap: (){
              print("On tap");
            },
            onDoubleTap: (){
              print("On Double Tap");
            },
            onLongPress: (){
              print('On Long Presses');
            },
            child: Text('This is test text',style: TextStyle(color: Colors.black,fontSize: 20),)),

            InkWell(
            onLongPress: (){
              print('Print long press');
            },
            child: Text('This is text 2',style: TextStyle(color: Colors.black,fontSize: 20),)),

          ],
        ),
      )
    );
  }
}