// lib/user_interface.dart
import 'package:disaster/resource_donation_page.dart';
import 'package:flutter/material.dart';
// Correct path to the file
import 'emergency_contacts_page.dart';  // Correct path to the file
import 'chatbot_page.dart';  // Correct path to the file
import 'data_store.dart';  // Import global data store

class UserInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User/Donor Interface')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Donate Resources'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResourceDonationPage()),
              );
            },
          ),
          ListTile(
            title: Text('Emergency Contacts'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmergencyContactsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Chatbot'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatbotPage()),
              );
            },
          ),
          ListTile(
            title: Text('Validated Information'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ValidatedInformationPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ValidatedInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Validated Information')),
      body: ListView.builder(
        itemCount: validatedInformation.length,  // Ensure this variable is accessible
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(validatedInformation[index]),  // Ensure this variable is accessible
          );
        },
      ),
    );
  }
}
