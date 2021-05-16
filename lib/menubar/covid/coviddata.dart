import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  var activeCases;
  var recovered;
  var deaths;
  var lastUpdatedAtApify;

  Future getCovid() async {
    http.Response response = await http.get(Uri.parse(
        "https://api.apify.com/v2/key-value-stores/toDWvRj1JpTXiM8FF/records/LATEST?disableRedirect=true"));
    var GetResult = jsonDecode(response.body);
    setState(() {
      this.lastUpdatedAtApify = GetResult['lastUpdatedAtApify'];
      this.activeCases = GetResult['activeCases'];
      this.recovered = GetResult['recovered'];
      this.deaths = GetResult['deaths'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getCovid();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Explorer",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Daily",
            style: TextStyle(color: Colors.red, fontSize: 25.0),
          ),
        ]),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Icon(Icons.save),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 8.0)),
              Text(
                "Covid-19 Update India",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Text(
                "Last Updated",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
              ),
              Text(
                  lastUpdatedAtApify != null
                      ? lastUpdatedAtApify.toString()
                      : "Loading",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0)),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Text(
                "Active Cases",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Text(
                activeCases != null ? activeCases.toString() : "Loading..",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Text(
                "Recovered",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Text(
                recovered != null ? recovered.toString() : "Loading..",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Text(
                "Deaths",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Text(
                deaths != null ? deaths.toString() : "Loading..",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
