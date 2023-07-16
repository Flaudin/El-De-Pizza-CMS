import 'package:eldepizzacms/screens/dashboard/dashboard_screen.dart';
import 'package:eldepizzacms/screens/inventory/inventory_screen.dart';
import 'package:eldepizzacms/screens/orders/orders_screen.dart';
import 'package:eldepizzacms/screens/settings/settings_screen.dart';
import 'package:eldepizzacms/screens/users/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SideNav(),
    );
  }
}

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  List<Widget> nav = const [
    Dashboard(),
    Inventory(),
    Orders(),
    Users(),
    Settings()
  ];

  int selectedNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SideNavigationBar(
            selectedIndex: selectedNav,
            header: const SideNavigationBarHeader(
                title: Text(
                  "El De Pizza CMS",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                image: Text(""),
                subtitle: Text(
                  "Admin",
                  style: TextStyle(color: Colors.white),
                )),
            theme: SideNavigationBarTheme(
                itemTheme: SideNavigationBarItemTheme.standard(),
                togglerTheme: SideNavigationBarTogglerTheme.standard(),
                dividerTheme: SideNavigationBarDividerTheme.standard(),
                backgroundColor: const Color(0xff131313)),
            items: const [
              SideNavigationBarItem(icon: Icons.dashboard, label: 'Dashboard'),
              SideNavigationBarItem(icon: Icons.inventory, label: 'Inventory'),
              SideNavigationBarItem(
                  icon: Icons.delivery_dining, label: 'Oders'),
              SideNavigationBarItem(icon: Icons.group, label: 'Users'),
              SideNavigationBarItem(icon: Icons.settings, label: 'Settings'),
            ],
            onTap: (index) {
              setState(() {
                selectedNav = index;
              });
            }),
        Expanded(child: nav.elementAt(selectedNav))
      ]),
    );
  }
}
