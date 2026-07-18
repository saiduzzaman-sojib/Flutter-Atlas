import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Image",
        style: TextStyle(
          color: Colors.white, 

        ),),
       
      ),

      body: Column(
        children: [
          Image.network('https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg?semt=ais_hybrid&w=740&q=80',
          height: 100,
          width: 200,),

          Center(
            child: InkWell(
              onTap: (){
                print('CLicked');
              },
              child: Image.asset('asset/blue-social-media-logo_197792-1759.avif',
              height: 100,
              width: 200,),
            ),
          ),

          SizedBox(
            height: 30,
            width: 30,
          ),

          Text('Login Here..... ',
            style: TextStyle(
             backgroundColor: Colors.white,
             fontSize: 30,
            ),
            ),
          SizedBox(
            height: 20,
          ),

            TextFormField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
        ],
      ),

      
    );
  }
}