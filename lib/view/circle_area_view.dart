import 'package:flutter/material.dart';

class CircleAreaView extends StatefulWidget {
  @override
  _CircleAreaViewState createState() => _CircleAreaViewState();
}

class _CircleAreaViewState extends State<CircleAreaView> {
  final TextEditingController _radiusController = TextEditingController();
  double _area = 0.0;

  void _calculateArea() {
    final double radius = double.tryParse(_radiusController.text) ?? 0.0;
    setState(() {
      _area = 3.14159 * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Area Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Radius',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: Text('Calculate Area'),
            ),
            SizedBox(height: 20),
            Text(
              'Area: $_area',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
