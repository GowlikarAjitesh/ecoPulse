import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleForScreen;
  final int currentStreak = 0;
  final int maxStreak = 5;
  const CustomAppBar({super.key, required this.titleForScreen});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100.0,
      title: titleForScreen != "" ? Text(titleForScreen) : null,
      elevation: 3.0,
      leading: IconButton(
        color: Colors.green,
        icon: Icon(Icons.eco),
        onPressed: () {},
        iconSize: 50,
        padding: EdgeInsets.only(left: 6.0, right: 2.0, top: 2.0, bottom: 2.0),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent, // Removes the highlight effect
      ),
      leadingWidth: 40.0,

      actions: [
        IconButton(
          icon: Icon(
            Icons.local_fire_department,
            color:
                currentStreak > 0 ? const Color.fromARGB(255, 255, 0, 0) : null,
            semanticLabel: '$currentStreak',
          ),
          tooltip: 'Current Streak: $currentStreak \n max Streak: $maxStreak',
          onPressed: () {
            print('Search button pressed');
          },
          padding: EdgeInsets.all(0.0),
          iconSize: 30,
          splashColor: Colors.transparent, // Removes the ripple effect
          highlightColor: Colors.transparent, // Removes the highlight effect
        ),
        // SizedBox(width: 10),
        Text(
          '$currentStreak',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        SizedBox(width: 20),
        Builder(
          builder: (context) {
            return InkWell(
              onTap: () => Scaffold.of(context).openEndDrawer(),
              child: Hero(
                tag: 'sidebar',
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/spider.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            );
          },
        ),
        // IconButton(
        //   icon: Icon(Icons.person_outlined),
        //   onPressed: () {
        //     print('Notifications button pressed');
        //   },
        //   iconSize: 30,
        //   splashColor: Colors.transparent, // Removes the ripple effect
        //   highlightColor: Colors.transparent, // Removes the highlight effect
        // ),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
