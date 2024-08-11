import 'package:flutter/material.dart';

class ResourceManagementPage extends StatefulWidget {
  @override
  _ResourceManagementPageState createState() => _ResourceManagementPageState();
}

class _ResourceManagementPageState extends State<ResourceManagementPage> {
  final List<String> _resources = ['Water', 'Food', 'Medicines'];
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
      appBar: AppBar(title: Text('Resource Management')),
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
