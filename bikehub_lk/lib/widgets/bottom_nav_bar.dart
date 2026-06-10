import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {

  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(

      currentIndex: currentIndex,

      selectedItemColor:
          Colors.orange,

      unselectedItemColor:
          Colors.grey,

      type:
          BottomNavigationBarType.fixed,

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
          icon: Icon(Icons.favorite),
          label: "Favorites",
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