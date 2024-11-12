import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/page/produk.dart';
import 'package:flutter_application_1/page/setting.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavbarState();
}

class _NavbarState extends State<NavBar> {
  int _selectedIndex = 0;
  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    Product(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          currentIndex: _selectedIndex,
          onTap: _navigationBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Product'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ]),
    );
  }
}
