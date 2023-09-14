import 'package:flutter/material.dart';
import 'Signin.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('sigin up'),
        ),
        body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {

  @override
  State<MyCustomForm> createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text("signup Form", style: TextStyle(fontSize:30,
              fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: ("your name")
              ),
            ),
          ),
      Padding(padding: EdgeInsets.all(20),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Give Value';
            }
            return null;
          },
          decoration: InputDecoration(
              hintText: ("your Email")
          ),
        ),
      ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: ("Password")
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Signing in...')));
              }
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Signin() ));
            },
            child: Text('Sign up'),
          ),

        ],
      ),
    );
  }
}


