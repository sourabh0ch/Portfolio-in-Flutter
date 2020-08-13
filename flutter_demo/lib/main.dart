import 'package:flutter/material.dart';
import 'package:flutter_demo/AboutMe.dart';
import 'package:flutter_demo/Education.dart';
import 'package:flutter_demo/WorkExpPage.dart';
import 'package:flutter_demo/Skills.dart';
import 'package:flutter_demo/Project.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/aboutMe': (context) => AboutMe(),
        '/education': (context) => Education(),
        '/workexperience': (context) => WorkExpPage(),
        '/skills': (context) => Skills(),
        '/project': (context) => Project(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: FaIcon(FontAwesomeIcons.android),
                color: Colors.greenAccent,
                iconSize: 180,
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sourabh Chouhan",
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: "Sniglet",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Senior Android & \n\n"
                "Backend Java Developer",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 17,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 27,
                width: 250,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                color: Colors.transparent,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.face,
                      color: Colors.brown,
                      size: 35,
                    ),
                    title: Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/aboutMe');
                },
              ),
              RaisedButton(
                color: Colors.transparent,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.blue[900],
                      size: 35,
                    ),
                    title: Text(
                      'Education',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/education');
                },
              ),
              RaisedButton(
                color: Colors.transparent,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.work,
                      color: Colors.green,
                      size: 35,
                    ),
                    title: Text(
                      'Experience',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/workexperience');
                },
              ),
              RaisedButton(
                color: Colors.transparent,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.code,
                      color: Colors.green,
                      size: 35,
                    ),
                    title: Text(
                      ' My Skills',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/skills');
                },
              ),
              RaisedButton(
                color: Colors.transparent,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.dashboard,
                      color: Colors.pink,
                      size: 35,
                    ),
                    title: Text(
                      ' My Projects',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/project');
                },
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 65,
                  ),

                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Colors.white,
                    iconSize: 40,
                    onPressed: github_url,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    color: Colors.lightBlueAccent,
                    iconSize: 40,
                    onPressed: twitter_url,
                  ),

                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    color: Colors.blue[600],
                    iconSize: 40,
                    onPressed: linkedin_url,
                  ),

                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    color: Colors.white,
                    iconSize: 40,
                    onPressed: facebok_url,
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


facebok_url() async {
  const url = 'https://www.facebook.com/sorav.chouhan.944';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

linkedin_url() async {
  const url = 'https://www.linkedin.com/in/sourabh-chouhan-859ba8134';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

twitter_url() async {
  const url = 'https://twitter.com/chouhansourabh1?s=08';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

github_url() async {
  const url = 'https://github.com/Sourabh0ch';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

