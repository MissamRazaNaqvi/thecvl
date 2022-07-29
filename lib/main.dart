import 'package:flutter/material.dart';
import 'package:thecvl/aboutus.dart';
import 'package:thecvl/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CVL',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const cvl(),
    );
  }
}

class cvl extends StatefulWidget {
  const cvl({Key? key}) : super(key: key);

  @override
  State<cvl> createState() => _cvlState();
}

class _cvlState extends State<cvl> {
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
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('V O L L E Y B A L L'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ready To Play', style: TextStyle(letterSpacing: 3.0)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Play', style: TextStyle(letterSpacing: 2.0),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Stressed, Blessed & Volleyball Obsessed', style: TextStyle(letterSpacing: 1.0),),
                ],
              ),
              Divider(height: 10.0,color: Colors.white,),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        //Text('Register');
                      }, child: Text('Login'),
                      style: ButtonStyle(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Text('Register');
                      }, child: Text('Register'),

                    ),
                  )
                ],
              )
            ],
          )
      ),

    );
  }
}