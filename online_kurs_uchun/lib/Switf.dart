import 'package:flutter/material.dart';
class Swift extends StatefulWidget {
  const Swift({super.key});

  @override
  State<Swift> createState() => _SwiftState();
}

class _SwiftState extends State<Swift> {
  bool myValue=false;
  bool myValue1=false;
  bool myValue2=false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myValue==false?Colors.grey:Colors.green,
      ),
      body: Container(
       child: Column(
         children: [
           Switch.adaptive(
            onChanged: (value){
              setState(() {
                myValue=value;
              });
             },
              value:myValue,
     ),
      Switch.adaptive(
            onChanged: (value){
              setState(() {
                myValue1=value;
              });
             },
              value:myValue1,
     ),
     ListTile(
      title: Text('Shiriftni qora rangda korsatish'),
      leading:  CircleAvatar(
        child: Icon(Icons.person,
      color: Colors.white,),
      backgroundColor: myValue2==false?Colors.grey:Colors.green,),
      trailing:  Switch.adaptive(
            onChanged: (value){
              setState(() {
                myValue2=value;
              });
             },
              value:myValue2,
     ),

     )
         ],
       ),
      ),
    );
  }
}