import 'package:flutter/material.dart';
import './components/app_bar.dart';
import './components/nav_bar.dart';
import './components/side_bar.dart';
import './home/home_page.dart';
import './calculate/calculate_page.dart';

class NewLayout extends StatefulWidget {
  const NewLayout({super.key});
  @override
  State<NewLayout> createState() => _NewLayoutState();
}

class _NewLayoutState extends State<NewLayout> {
  Map<int, String> map = {
    0: "",
    1: "Calculate",
    2: "Leaderboard",
    3: "Challenges",
  };
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CustomAppBar(titleForScreen: map[currentIndex] ?? ''),

      endDrawer: SideBar(),
      body:
          <Widget>[
            HomePage(),
            CalculatePage(),
            Text("Hello World leaderboard"),
            Text("Hello World challenges"),
          ][currentIndex],

      //bottom navigation bar
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
