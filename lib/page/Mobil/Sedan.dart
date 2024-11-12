import 'package:flutter/material.dart';

class HalamanSedan extends StatelessWidget {
  const HalamanSedan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sedan',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.red, // Warna latar belakang AppBar
        centerTitle: true, // Posisikan judul di tengah
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        elevation: 4.0, // Memberikan bayangan pada AppBar
      ),
      body: Center(
        child: const Text('Sedan'), // Konten halaman
      ),
    );
  }
}
