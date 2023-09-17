import 'package:flutter/material.dart';
import 'YourData.dart';

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
        title: const Text('sign up'),
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const Text("signup Form", style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold),),
          Padding(padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: ("your name")
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: ("your Email")
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(20),
            child: TextFormField(

              controller: _passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Give Value';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: ("Password")
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Signing in...')));
              }
              String name = _nameController.text;
              String email = _emailController.text;
              String password = _passwordController.text;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>
                  YourData(name: name, email: email, password: password)));
            },
            child: const Text('Sign up'),
          ),

        ],
      ),
    );
  }
}


