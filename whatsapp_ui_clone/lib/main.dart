import 'package:flutter/material.dart';

import 'Screens/homescreen.dart';
import 'Widgets/listview.dart';

void main(){
runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepPurple),
      home: const Homescreen(),
    );
  }
}
