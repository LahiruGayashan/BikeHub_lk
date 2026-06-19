import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/bikes/add_bike_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  void _onTap(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
        break;

      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const AddBikeScreen(),
          ),
        );
        break;

      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const ProfileScreen(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,

      onTap: (index) =>
          _onTap(context, index),

      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,

      type: BottomNavigationBarType.fixed,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: "Sell",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "Chat",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}