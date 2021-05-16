import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsappindia/main%20file/news.dart';
import 'package:newsappindia/menubar/business/business.dart';
import 'package:newsappindia/menubar/covid/coviddata.dart';
import 'package:newsappindia/menubar/entertainment/entertain.dart';
import 'package:newsappindia/menubar/science/science.dart';
import 'health/health.dart';
import 'package:newsappindia/menubar/technology/technology.dart';
import 'package:newsappindia/menubar/sports/sports.dart';
import 'sports/sports.dart';
import 'technology/technology.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class menubar extends StatelessWidget {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(40.0)),
          Center(
            child: Text(
              "News Categories",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => health(),
                      ));
                },
                color: Colors.black,
                splashColor: Colors.red,
                child: Text(
                  "Health",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sports(),
                      ));
                },
                splashColor: Colors.red,
                child: Text("Sports",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20.0,
                    ))),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tech(),
                      ));
                },
                highlightColor: Colors.red,
                elevation: 30.0,
                child: Text("Technology",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20.0,
                    ))),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                elevation: 1.0,
                highlightColor: Colors.blue,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => entertain(),
                      ));
                },
                child: Text("Entertainment",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ))),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                elevation: 1.0,
                highlightColor: Colors.blue,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => business(),
                      ));
                },
                child: Text("Business",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ))),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                elevation: 1.0,
                highlightColor: Colors.blue,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => science(),
                      ));
                },
                child: Text("Science",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ))),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          SizedBox(
            height: 40.0,
            width: 160.0,
            child: RaisedButton(
                elevation: 1.0,
                highlightColor: Colors.blue,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Covid(),
                      ));
                },
                child: Text("Covid-19",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ))),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(),
                        ));
                  },
                  icon: Icon(Icons.home),
                  iconSize: 50.0,
                ),
              ],
            ),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.only(top: 60.0)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: IconButton(
                  icon: new Icon(
                    FontAwesomeIcons.github,
                  ),
                  onPressed: () async {
                    const url = 'https://github.com/Subham1901';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
            ),
          ),
          Container(
            child: IconButton(
                icon: new Icon(
                  FontAwesomeIcons.instagram,
                ),
                onPressed: () async {
                  const url = 'https://www.instagram.com/subham_sp24?r=nametag';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                }),
          ),
          Container(
            child: IconButton(
                icon: new Icon(
                  FontAwesomeIcons.linkedin,
                ),
                onPressed: () async {
                  const url =
                      'https://www.linkedin.com/in/subham-prasad-panda-a4b2371b6/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                }),
          ),
        ],
      ),
    ]));
  }
}
