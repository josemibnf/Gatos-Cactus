import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/RandomWords.dart';
import 'package:hello_world/WhatIsIt.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // all pages
  final RandomWords _randomWords = RandomWords();
  final WhatIsIt _whatisit = WhatIsIt();
    Widget _showPage;  
    Widget _choosePage(int page){
      switch (page){
        case 0:
          return _randomWords;
          break;
        case 1:
          return _randomWords;
          break;
        case 2:
          return _randomWords;
          break;
        case 3:
          return _randomWords;
          break;
        case 4:
          return _randomWords;
          break;
        case 5:
          return _whatisit;
          break;
        default:
          return new Container(
            child: new Center(
              child: new Text(
                "No hay mas paginas o que ??",
                style: new TextStyle(fontSize: 30)
              )
            )
          );
      }
    }
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            height: 53.0,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
              Icon(Icons.call_split, size: 30),
              Icon(Icons.perm_identity, size: 30),
              Icon(Icons.live_tv, size: 30),
            ],
            color: Colors.yellow[300],
            buttonBackgroundColor: Colors.yellow[300],
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (int tappIndex) {
              setState(() {
                _showPage = _choosePage(tappIndex);
              });
            },
          ),
          body: _showPage
        );
    }
  }