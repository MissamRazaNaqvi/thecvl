import 'package:flutter/material.dart';
import 'news.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('About Us', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w900, letterSpacing: 2, decoration: TextDecoration.underline, decorationColor: Colors.indigo, color: Colors.indigo,)),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(alignment: Alignment.center),
                  Text('\n'+'CORPORATE VOLLEYBALL LEAGUE',style: TextStyle(color: Colors.indigo, fontSize: 30)),
                  Text('\n'+'No longer keep track of the score in your head, or with just your fingers. Whether you are playing, refereeing, or just watching the game, this attractive new look allows you to keep scores in style.', style: TextStyle(fontSize: 20)),
                  Image.asset('images/volleyball-sport-athlete-player.webp'),
                  //Text('Features & Benefits',style: TextStyle(color: Colors.indigo, fontSize: 30)),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Features & Benefits',style: TextStyle(color: Colors.indigo, fontSize: 30)),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('All-in-one app for volleyball',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Free to use',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Live Scoring',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Fixtures',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Player Registration',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Player profiling',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Player Ranking',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Tournament Registration',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Tournament Updates',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Team Registartion',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Volleyball News',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Scoreboard',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Set points',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Time-outs',style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_outlined, color: Colors.green),
                    label: Text('Rules and Regulations',style: TextStyle(color: Colors.black)),
                    onPressed: _launchURL,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
_launchURL() async {
  const url = 'https://flannagans.com/volleyball/volleyball-rules-regulations/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

canLaunch(String url) {
}

launch(String url) {
}

