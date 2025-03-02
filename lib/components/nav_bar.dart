import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: currentIndex,
      indicatorColor: Colors.green,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.calculate),
          icon: Icon(Icons.calculate_outlined),
          label: "Calculate",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.leaderboard),
          icon: Icon(Icons.leaderboard_outlined),
          label: "Leaderboard",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.task),
          icon: Icon(Icons.task_outlined),
          label: "Challenges",
        ),
      ],
    );
  }
}
