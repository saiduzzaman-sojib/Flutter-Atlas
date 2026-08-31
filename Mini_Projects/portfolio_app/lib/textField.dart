import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController =TextEditingController();
    TextEditingController passwordController =TextEditingController();
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
        
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                helperText: 'Phone Number',
                hintText: 'Enter Phone Number',
                labelText: 'Phone number',
                helperStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  //same vhabe labelstyle ,hintstyle o korte pari 
                ),
                suffixIcon: Icon(Icons.check),
                prefixIcon: Icon(Icons.phone),
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                  
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                helperText: 'Password',
                hintText: 'Enter Your Password',
                labelText: 'Password',
                helperStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  //same vhabe labelstyle ,hintstyle o korte pari 
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock),
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                  
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
              ),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(phoneController.text)));

                print(phoneController.text);
              }, child: Text("Submit")),
          ],
        ),
      )),
    );
  }
}