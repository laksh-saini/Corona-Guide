import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Precautions'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: ListView(children: <Widget>[
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
              ),
            ),
          ]),
        ));
  }
}
