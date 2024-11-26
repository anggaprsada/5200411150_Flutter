import 'package:firebase_auth/firebase_auth.dart';
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

  // Fungsi untuk mengubah halaman yang dipilih di BottomNavigationBar
  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Daftar halaman yang akan ditampilkan berdasarkan index
  final List<Widget> _pages = [
    HomePage(),
    Product(),
    Setting(), // Pastikan halaman Setting dimasukkan di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[
          _selectedIndex], // Menampilkan halaman yang sesuai dengan index
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _navigationBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Product'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}
