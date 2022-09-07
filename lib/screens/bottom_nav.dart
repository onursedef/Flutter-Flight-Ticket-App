
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We don't want top bar in our application
      //appBar: AppBar(
        //title: const Text("My tickets"),
      //),
      body: Center(
          child: _widgetOptions[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        // I want them to move so I'll leave this commented.
        // type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"
          ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"
          ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), 
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"
          )
        ],
      ),
    );
  }
}
