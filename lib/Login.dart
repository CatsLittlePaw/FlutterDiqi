import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:testflutterapp/Home.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'package:testflutterapp/routes.dart';

class LoginPage extends StatelessWidget{
    

  void _ajax() async {         
    try {      
      Response response = await Dio().get("http://www.google.com");
      print(response.data);
    } catch (e) {
      print(e);
    }    
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("迪琦草本生醫"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Account *",
                  hintText: "會員帳號",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Password *",
                  hintText: "會員密碼",                 
                ),
              ),
            ),
            SizedBox(
              height: 52.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 48.0,
              height: 48.0,
              child: RaisedButton(
                child: Text("Login"),
                onPressed: () {
                    Navigator.pushReplacementNamed(context, GitmeRebornRoutes.home); 
                  }//_ajax,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer 範例'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('我的最愛'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('聯絡我'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ]
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
