  import 'package:flutter/material.dart';
import 'user_interface.dart';
import 'volunteer_interface.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disaster Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserSelectionPage(),
    );
  }
}

class UserSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select User Type'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserInterface()),
                );
              },
              child: Text('User/Donor'),
            ),
            SizedBox(height: 20), // Added spacing for better UI
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolunteerInterface()),
                );
              },
              child: Text('Volunteer'),
            ),
          ],
        ),
      ),
    );
  }
}