import 'package:eco_pulse2/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: 200,
      child: Column(
        children: [
          DrawerHeader(
            // decoration: BoxDecoration(color: Colors.green),
            child: Wrap(
              // direction: Axis.vertical,
              verticalDirection: VerticalDirection.down,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: 'sidebar',
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/spider.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                ListTile(
                  title: Text('John Deo'),
                  subtitle: Text('Email.jhondeo@gmail.com'),
                  trailing: Text('Country'),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text('View Profile'),
            onTap: () {
              // Navigate to HomeScreen
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            onTap: () {
              // Navigate to ProfileScreen
            },
          ),
          SizedBox(height: 10),
          Consumer<ThemeProvider>(
            builder: (ctx, provider, __) {
              return SwitchListTile.adaptive(
                title: Text('Dark Mode'),
                secondary: Icon(Icons.dark_mode_outlined),
                value: provider.getThemeValue(),
                onChanged: (bool value) {
                  provider.setThemeMode(mode: value);
                },
              );
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About Us'),
            onTap: () {
              // Navigate to AboutUsScreen
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Help'),
            onTap: () {
              // Navigate to HelpScreen
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text('Logout'),
            onTap: () {
              // Logout
            },
          ),
        ],
      ),
    );
  }
}
