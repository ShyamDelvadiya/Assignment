import 'package:assignment/Tab_2.dart';
import 'package:assignment/Tab_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomnavibar extends StatefulWidget {
  const bottomnavibar({Key? key}) : super(key: key);

  @override
  State<bottomnavibar> createState() => _bottomnavibarState();
}

class _bottomnavibarState extends State<bottomnavibar> {
  int selectedindex = 0;
  List<Widget> tabs = [const tab_1(), const tab_2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightGreen,
        selectedFontSize: 20,
        unselectedFontSize: 10,
        // useLegacyColorScheme: true,
        elevation: 10,
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        unselectedLabelStyle: const TextStyle(fontSize: 20),
        unselectedIconTheme: const IconThemeData(
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.blue,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        currentIndex: selectedindex.toInt(),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Tab-1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Tab-2",
          ),
        ],
      ),
      body: tabs.elementAt(selectedindex.toInt()),
    );
  }
}
