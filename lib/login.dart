import 'package:flutter/material.dart';
import 'package:flutter_task/register.dart';

import 'mainpage.dart';


class Welcome extends StatelessWidget {
   Welcome({ Key? key }) : super(key: key);
final _formKey = GlobalKey<FormState>();  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: CircleAvatar(minRadius:MediaQuery.of(context).size.height/7.5, 
                  backgroundImage: NetworkImage('https://drscdn.500px.org/photo/87116431/m%3D900/v2?sig=17b221a30d79907936d44a914f4c579abf93d8d739380c0b89481921c250c1b7'),)
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                children: [
                  Padding(
  padding: EdgeInsets.symmetric(horizontal: 15),
  child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Enter valid email id as abc@gmail.com'),
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            )),

Padding(
  padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 15, bottom: 0),
  child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            hintText: 'Enter secure password'),
           validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            ),
            GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Register()),
  );

                print('Register now');},
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text('You don\'t have account? Register now',
                style:TextStyle(fontSize: 20,color: Colors.blueAccent) ,),
              ),
            ),
            
               GestureDetector(
                onTap: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  const MainPage()),
  );

                print('Register now');}
                  },
                
              
                child: Container(
                  child: Center(child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),)),
                  height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.orange
                  ),
                ),
              ),

            
                ],
              )),
            
            ],
          ),
        ],
      ));
    
  }
}