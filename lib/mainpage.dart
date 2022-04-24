import 'package:flutter/material.dart';
import 'package:flutter_task/login.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Task')),
        backgroundColor: Colors.orange,
        actions: [
          Icon(Icons.settings),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
    items:  <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chat',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'settings',
      ),
    ],
  ),
  drawer: Drawer(
    child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              accountName: Text(
                "Abdelaziz Tarig",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text("vzzoz.nour@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://www.teahub.io/photos/full/16-166185_deer-wallpaper-hd.jpg'
                ),
                ),
              ],
            ),
            ListTile(
              title: Text("Sent"),
              leading: Icon(Icons.send),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Stared"),
              leading: Icon(Icons.star),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Archive"),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text("Chat"),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Welcome()),
                 );
              },
            ),


          ],
        ),
      ),
  floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){},backgroundColor: Colors.orange,),
    );
  }
}