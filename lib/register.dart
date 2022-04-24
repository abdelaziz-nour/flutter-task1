import 'package:flutter/material.dart';

import 'login.dart';
import 'mainpage.dart';


class Register extends StatelessWidget {
   
  final _formKey = GlobalKey<FormState>();  @override

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                height: 150,
                child: Center(
                child: CircleAvatar(minRadius:MediaQuery.of(context).size.height/2, 
                backgroundImage: NetworkImage('https://drscdn.500px.org/photo/87116431/m%3D900/v2?sig=17b221a30d79907936d44a914f4c579abf93d8d739380c0b89481921c250c1b7'),)
              ),
              ),
              SizedBox(
                height: 10,
              ),
                Form(
                  key: _formKey,
                  child: Column(
                  children: [
                    Padding(
  padding: const EdgeInsets.all(15),
  child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Enter valid emails address'),
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )),
              Padding(
  padding: const EdgeInsets.all(15),
  child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.key),
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter valid password'),
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )),
              Padding(
  padding: const EdgeInsets.all(15),
  child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.phone),
              border: OutlineInputBorder(),
              labelText: 'Phone',
              hintText: 'Enter valid Phone number'),
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )),
              Padding(
                padding: const EdgeInsets.all(15),
              child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
              labelText: 'DOB',
              hintText: 'Reenter your DOB'),
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )),

              GestureDetector(
                onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Welcome()),
  );
},child:Container(
                  margin: EdgeInsets.all(20),
                  child: Text('You already have account? Login now',
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
    MaterialPageRoute(builder: (context) =>  MainPage()),
  );

                  print('Register now');}
                    },
                  
                
                  child: Container(
                    child: Center(child: Text("Register",style: TextStyle(fontSize: 20,color: Colors.white),)),
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
          ),
        ],
      ));
  }
}