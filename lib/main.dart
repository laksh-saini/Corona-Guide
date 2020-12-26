import 'package:flutter/material.dart';
import 'package:serious/co.dart';
import 'package:serious/home.dart';
import 'package:serious/precautions.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/p': (context) => Pre(),
        '/c': (context) => Co(),
      },
    ));
