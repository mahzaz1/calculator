import 'package:flutter/material.dart';

import 'common.dart';
import 'homeScreen.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.orange,
          centerTitle: true
        ),
        fontFamily: 'Nunito',
      ),
      home: HomePage(),
    );
  }
}
