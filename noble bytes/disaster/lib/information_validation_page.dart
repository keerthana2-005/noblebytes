import 'package:flutter/material.dart';

class InformationValidationPage extends StatefulWidget {
  @override
  _InformationValidationPageState createState() => _InformationValidationPageState();
}

class _InformationValidationPageState extends State<InformationValidationPage> {
  final _infoController = TextEditingController();
  final List<String> _validations = [];

  void _validateInfo() {
    if (_infoController.text.isNotEmpty) {
      setState(() {
        _validations.add(_infoController.text);
        _infoController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Information Validation')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _infoController,
              decoration: InputDecoration(labelText: 'Enter Information'),
            ),
          ),
          ElevatedButton(
            onPressed: _validateInfo,
            child: Text('Validate'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _validations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Validated Info: ${_validations[index]}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
