import 'package:flutter/material.dart';

class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body:
      ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return Card(
            color: Colors.lime.shade100, 
            elevation: 5,
             child: ListTile(
              title: Text('Sojib'),
              subtitle: Text('013123456'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
             ),
           );
        }
      
      //  ListView(
      //   children: [
      //      Card(
      //       color: Colors.greenAccent.shade100,
      //       elevation: 5,
      //        child: ListTile(
      //         title: Text('Sojib'),
      //         subtitle: Text('013123456'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
      //        ),
      //      ),
      //      Card(
      //       color: Colors.cyanAccent.shade100,
      //        child: ListTile(
      //         title: Text('Sojib'),
      //         subtitle: Text('013123456'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
      //        ),
      //      ),
      //      Card(
      //        color: Colors.deepOrange.shade100,
      //        child: ListTile(
      //         title: Text('Sojib'),
      //         subtitle: Text('013123456'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
      //        ),
      //      ),
      //      Card(
      //        child: ListTile(
      //         title: Text('Sojib'),
      //         subtitle: Text('013123456'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
      //        ),
      //      ),
      //      Card(
      //        child: ListTile(
      //         title: Text('Sojib'),
      //         subtitle: Text('013123456'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
      //        ),
      //      ),
      //      Card(
      //        child: ListTile(
      //         title: Text('Sojib'),
      //         subtitle: Text('013123456'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.deepOrange ,),
      //        ),
      //      ),
      //   ],
      // ),
    )
    );
  }
}