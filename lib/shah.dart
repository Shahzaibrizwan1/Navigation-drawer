import 'package:firstproject/home_page.dart';
import 'package:flutter/material.dart';

class ShahZaib extends StatefulWidget {
  static const String id = 'ShahZiab';
  const ShahZaib({super.key});

  @override
  State<ShahZaib> createState() => _ShahZaibState();
}

class _ShahZaibState extends State<ShahZaib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Navigation'),
            backgroundColor: Color.fromARGB(255, 24, 95, 131)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text("button 3"))),
            ]));
  }
}
