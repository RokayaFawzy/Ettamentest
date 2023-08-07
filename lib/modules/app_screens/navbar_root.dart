import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/app_screens/dashboard.dart';
import 'package:flutter/material.dart';

class NavBarRoot extends StatefulWidget {
  const NavBarRoot({super.key});

  @override
  State<NavBarRoot> createState() => _NavBarRootState();
}

class _NavBarRootState extends State<NavBarRoot> {
  int _selectedIndex = 0;
  final _screens = [
    const Dashboard(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          shadowColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.segment_rounded),
            onPressed: () {
              // Navigator.of(context).pop();
            },
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: kPrimaryColor)),
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF18DF80),
          unselectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined), label: "DASHBOARD"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_search_outlined), label: "SEARCH"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "NOTIFICATIONS"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: "INBOX"),
          ],
        ),
      ),
    );
  }
}
