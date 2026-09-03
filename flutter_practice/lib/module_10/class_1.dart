import 'package:flutter/material.dart';

class Module10Class1 extends StatelessWidget {
  const Module10Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Module 10 Class 1'),
      ),
      
      body: SafeArea(
      child:Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
              helperText: 'Phone Number',
              hintText: 'Enter Phone Number',
              labelText: 'Label Phone Number',
              helperStyle: TextStyle(fontSize: 15,color: Colors.amberAccent),
              hintStyle: TextStyle(fontSize: 20,color: Colors.blue),
              labelStyle: TextStyle(fontSize: 15,color: Colors.deepOrange),
              prefixIcon: Icon(Icons.phone,color: Colors.deepOrange,),
              suffixIcon: Icon(Icons.check,color: Colors.deepOrange,),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              ),
            ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
              helperText: 'Password',
              hintText: 'Enter Password',
              labelText: 'Label Password',
              helperStyle: TextStyle(fontSize: 15,color: Colors.amberAccent),
              hintStyle: TextStyle(fontSize: 20,color: Colors.blue),
              labelStyle: TextStyle(fontSize: 15,color: Colors.deepOrange),
              prefixIcon: Icon(Icons.lock,color: Colors.deepOrange,),
              suffixIcon: Icon(Icons.remove_red_eye,color: Colors.deepOrange,),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              ),
            ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black26,
            foregroundColor: Colors.white,
            ),
            onPressed: (){
              if(phoneController.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Please Enter Phone Numebr')));
              }else if(phoneController.text.length!=11){
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Please Enter Valid Phone Number')));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(phoneController.text)));
              }
              // ScaffoldMessenger.of(context).showSnackBar(
              // SnackBar(content: Text(phoneController.text)));
              //print(phoneController.text);
            }, child: Text('Submit')),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.deepOrange,
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
                border : Border.all(
                  width: 5,
                  color: Colors.black,
                )
              ),
              child: Text('Container Text'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.deepOrange,
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                border : Border.all(
                  width: 5,
                  color: Colors.black,
                ),
                boxShadow: [
                  BoxShadow(
                  color: Colors.blue,
                  offset: Offset(4, 10),
                ),
                  BoxShadow(
                  color: Colors.deepPurple,
                  offset: Offset(-10, -10),
                ),
                ],
                
              ),
              child: Text('Container Text 2'),
            ),
          ],
        )
      )
      ),
    );
  }
}