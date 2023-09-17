import 'package:flutter/material.dart';

class YourData extends StatelessWidget{
  final String name;
  final String email;
  final String password;
  YourData({
    required this.name,
    required this.email,
    required this.password,

  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("your data"),
      ),
      body:Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

            Text(' Name: $name', style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),

            Text('Email: $email',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),

            Text('Password: $password',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),


          ],
        ),
      ),

    );

  }


}

