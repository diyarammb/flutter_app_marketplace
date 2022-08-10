import 'package:fiverr/pages/Chatapp.dart';
import 'package:fiverr/pages/LoginPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fiverr/pages/Search.dart';
import 'package:fiverr/pages/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var pages = [Search(), ChatApp(), profile()];
  int _selectItme = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectItme],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: "user"),
        ],
        currentIndex: _selectItme,
        onTap: (setValue) {
          setState(() {
            _selectItme = setValue;
          });
        },
      ),
    );
  }
}
