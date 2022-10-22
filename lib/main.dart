
import 'package:firstproject/home_page.dart';
import 'package:firstproject/two_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shahzaib",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ), 
      
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id :(context) => HomeScreen(),
        PageTwo.id :(context) => PageTwo()
      }
      
          //home: HomeScreen(), 
    );
  }
}