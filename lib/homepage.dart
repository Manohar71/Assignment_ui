import 'package:assignment_ui/bottomnavigation/account.dart';
import 'package:assignment_ui/bottomnavigation/bookmarks.dart';
import 'package:assignment_ui/bottomnavigation/home.dart';
import 'package:assignment_ui/bottomnavigation/saved.dart';
import 'package:flutter/material.dart';


class Homen extends StatefulWidget {
  const Homen({Key? key}) : super(key: key);

  @override
  _HomenState createState() => _HomenState();
}

class _HomenState extends State<Homen> {
  int _currentindex=0;
  final List<Widget> _children =[
   homeui(),
    bookmarks(),
    saved(),
    Account()
  ];
  void onTappedBar(int index){
    setState(() {
      _currentindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 3, 65, 115),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 13,
        selectedFontSize: 18,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'saved'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label:'bookmarks'
          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label:'account'
          )
        ]

    ),
        );
  }
}
