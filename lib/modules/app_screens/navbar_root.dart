import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/app_screens/dashboard_screen.dart';
import 'package:ettamentest/modules/app_screens/search_screen.dart';
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
    const Search(),
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
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.black38,
                child: CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage('assets/images/123.jpg'),
                ),
              ),
            ],
          ),
          flexibleSpace: Column(
            children: [
              Container(
                height: 1, // Height of the line
                color: Colors.grey, // Color of the line
              ),
              // Add other widgets if needed
            ],
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
                icon: Icon(Icons.notifications_none), label: "NOTIFICATIONS"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: "INBOX"),
          ],
        ),
      ),
    );
  }
}
