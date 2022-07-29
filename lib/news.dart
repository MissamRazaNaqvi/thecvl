import 'package:flutter/material.dart';
import 'package:thecvl/news.dart';
import 'aboutus.dart';
import 'main.dart';

class newsApp extends StatefulWidget {
  const newsApp({Key? key}) : super(key: key);

  @override
  State<newsApp> createState() => _newsAppState();
}

class _newsAppState extends State<newsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child:
          Image.asset('images/vcl.jpg',height: 10.0),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.indigo,
        elevation: 10.0,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(fontSize: 10, color: Colors.white)),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
            Divider(height: 2.0,),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text('News',style: TextStyle(fontSize: 10, color: Colors.white )),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const newsApp()),
                );
              },
            ),
            Divider(height: 2.0,),
            ListTile(
              leading: Icon(Icons.app_registration_rounded),
              title: Text('Registration',style: TextStyle(fontSize: 10, color: Colors.white )),
              onTap: (){},
            ),
            Divider(height: 2.0,),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us',style: TextStyle(fontSize: 10, color: Colors.white )),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const aboutUs()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
