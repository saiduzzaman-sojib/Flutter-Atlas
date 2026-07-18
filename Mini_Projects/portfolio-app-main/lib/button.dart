import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        title: Text("Button"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(30),
                )
              ),
              onPressed: (){}, child: Text("Button 1")),

            SizedBox(
               height: 10,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 75, 255, 59),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30),
                  )
                ),
                onPressed: (){}, child: Text("Button 1")),
            ),
            SizedBox(
              height: 30,
            ),
             SizedBox(
              width: double.infinity,
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30),
                  )
                ),
                onPressed: (){
                  print('You pressed button 3');
                }, child: Text("Button 3")),
             ),

             TextButton(onPressed: (){
              print('Read more........');
             }, child: Text('Read more....')),

             Icon(Icons.delete,color: Colors.red,size: 60,),
             IconButton(onPressed:(){
              print('Call me ');
             }, icon: Icon(Icons.call,color: Colors.deepPurple,size: 40,))
          ],
        ),
      )
    );
  }
}
      