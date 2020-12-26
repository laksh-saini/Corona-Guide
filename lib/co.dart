import 'package:flutter/material.dart';

class Co extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Report a case'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              'Coming soon',
              style: TextStyle(color: Colors.redAccent, fontSize: 40),
            ),
          ))
        ],
      ),
    );
  }
}
