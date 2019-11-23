import 'package:flutter/material.dart';
import 'gratitude.dart';
import 'birthdays.dart';
import 'reminders.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _listPages = List();
  Widget _currentPage;
  Color _currentColor = Colors.purple;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _listPages..add(Birthdays())..add(Gratitude())..add(Reminders());
    _currentPage = Birthdays();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.blueGrey.shade50,
        selectedItemColor: _currentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            title: Text('Birthdays'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            title: Text('Gratitude'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Reminders'),
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }

  void _changePage(int selectedIndex){
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];

      if(selectedIndex == 0 ){
        _currentColor = Colors.purple;
      } else if( selectedIndex == 1){
        _currentColor = Colors.orange;
      } else{
        _currentColor = Colors.blue;
      }
    });
  }
}
