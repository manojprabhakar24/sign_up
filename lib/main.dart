import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Validation'),
        ),
        body: MyCustomForm(),
      ),
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
          Text("Sign/signup Form", style: TextStyle(fontSize:30,
              fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(30),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: ("User Name")
              ),
            ),
          ),
      Padding(padding: EdgeInsets.all(30),
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
                    SnackBar(content: Text('Loading...')));
              }
            },
            child: Text('Log In'),
          ),

        ],
      ),
    );
  }
}
