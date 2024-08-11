// lib/volunteer_interface.dart
import 'package:flutter/material.dart';
import 'data_store.dart';  // Import global data store

class VolunteerInterface extends StatefulWidget {
  @override
  _VolunteerInterfaceState createState() => _VolunteerInterfaceState();
}

class _VolunteerInterfaceState extends State<VolunteerInterface> {
  final _controller = TextEditingController();

  void _validateInformation() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        // Add the validated information to the global data store
        validatedInformation.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Volunteer Interface')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter Validated Information'),
            ),
            SizedBox(height: 16.0), // Add space between the text field and button
            ElevatedButton(
              onPressed: _validateInformation,
              child: Text('Validate Information'),
            ),
          ],
        ),
      ),
    );
  }
}
