//import 'package:firstproject/shah.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  static const String id = 'PageTwo';
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
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
              Expanded(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/zx.jpg'),
                ),
                        title: const Text('Shahzaib'),
                        subtitle: Text('suscribe my channel'),
                        onTap: () {
                          Navigator.pushNamed(context, PageTwo.id);
                        },
                      
                    );
                  },
                ),
              )
            ]));
  }
}
