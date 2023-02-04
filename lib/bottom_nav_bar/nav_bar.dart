import 'package:flutter/material.dart';
import 'package:ird_test/bottom_nav_bar/record_page.dart';
import 'package:ird_test/bottom_nav_bar/saved_page.dart';
import 'package:ird_test/bottom_nav_bar/search_page.dart';
import 'package:ird_test/bottom_nav_bar/setting_page.dart';

import '../const/color.dart';
import '../const/style.dart';
import '../home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final pages = [
    HomePage(),
    SearchPage(),
    RecordPage(),
    SavedPage(),
    SettingPage()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.withOpacity(0.3),
      bottomNavigationBar: Container(
        color: primaryBGColor,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: BottomNavigationBar(
            backgroundColor: primaryWhite,
            elevation: 1,
            selectedItemColor: Color(0xff1d5e54),
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            selectedLabelStyle: myStyle(12, Colors.grey, FontWeight.w500),
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_filled),
                //backgroundColor: AppColor.kbgcolor,
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
                //backgroundColor: AppColor.kbgcolor,
              ),
              BottomNavigationBarItem(
                label: "Record",
                icon: Icon(Icons.videocam_rounded),
                //backgroundColor: AppColor.kbgcolor,
              ),
              BottomNavigationBarItem(
                label: "Saved",
                icon: Icon(Icons.bookmark),
                //backgroundColor: AppColor.kbgcolor,
              ),
              BottomNavigationBarItem(
                label: "Setting",
                icon: Icon(Icons.settings),
                //backgroundColor: AppColor.kbgcolor,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
