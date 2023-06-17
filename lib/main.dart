import 'package:flutter/material.dart';

import 'Bottom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3D-Configurator',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  bottomnavibar(),
    );
  }
}

