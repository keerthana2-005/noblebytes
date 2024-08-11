// lib/resource_donation_page.dart
import 'package:flutter/material.dart';

class ResourceDonationPage extends StatefulWidget {
  @override
  _ResourceDonationPageState createState() => _ResourceDonationPageState();
}

class _ResourceDonationPageState extends State<ResourceDonationPage> {
  final List<String> _resources = [];
  final _controller = TextEditingController();

  void _addResource() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _resources.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donate Resources')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Add Resource'),
            ),
            ElevatedButton(
              onPressed: _addResource,
              child: Text('Add'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _resources.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_resources[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
