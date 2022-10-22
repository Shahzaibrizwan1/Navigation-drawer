import 'package:firstproject/shah.dart';
import 'package:firstproject/two_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homescreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Navigation'),
            backgroundColor: Color.fromARGB(255, 24, 95, 131)),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
          children: [
            //DrawerHeader(child: Text('Shahzaib Rizwan'),),
            const UserAccountsDrawerHeader(
              accountName: Text('Shahzaib'),
              accountEmail: Text('shahzaibrizwan7@gmail.com'),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 95, 131),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/zx.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Shahzaib'),
              subtitle: Text('suscribe my channel'),
              onTap: () {
                Navigator.pushNamed(context, PageTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Shahzaib@gmail.com'),
              subtitle: Text('Email'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact'),
              //subtitle: Text('suscribe my channel'),
              onTap: () {
                Navigator.pushNamed(context, ShahZaib.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Off'),
              onTap: () {},
            )
          ],
        )),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PageTwo.id);
                        
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ShahZaib()));
                      },
                      child: Text("Shahzaib Button 1"))),
            ]));
  }
}
