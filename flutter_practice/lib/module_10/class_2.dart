import 'package:flutter/material.dart';

class Module10Class2 extends StatelessWidget {
  const Module10Class2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController =TextEditingController();
    TextEditingController passwordController =TextEditingController();
    final formKey =GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Module-10 Class 2',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              SizedBox(height: 40,),
              InkWell(
                onTap: (){
                  print('Clicked');
                },
                
                child: Center(
                  child: Image.asset('asset/Facebook.png',
                  height: 60,
                  width: 300,
                  fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 70,),
              Image.asset('asset/facebook-logo.png',
              height: 100,
              width: 100,
              fit: BoxFit.contain,
              ),
              
               //Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'), 
              SizedBox(height: 30,),
          
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  ),
                  //helperText: 'Phone number',
                  labelText: 'Phone number',
                  hintText: 'Enter phone number',
                  // helperStyle: TextStyle(
                  //   fontSize: 20,
                  //   color: Colors.red,
                  // ),
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please Enter Phone Number';
                  }
                  else if(value.length!=11){
                    return 'Please Enter Valid Phone Number';
                  }
                  else{return null;
                  }
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  ),
                  //helperText: 'Password',
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  // helperStyle: TextStyle(
                  //   fontSize: 20,
                  //   color: Colors.red,
                  // ),
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                 validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please Enter Password';
                  }
                  else if(value.length<7){
                    return 'Please Enter Valid Password';
                  }
                  else{return null;
                  }
                 },
                
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 130,
                height: 50,
                child: Container(
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    
                  ),
                  onPressed: (){
                   if(formKey.currentState!.validate()){
                       ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login Success')));
                   }
                    
                  }, child: Text('Log In')),
                ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}