import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Login/login_screen.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Setting', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  _logOut(context), // Mengoper context ke fungsi log out
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _logOut(BuildContext context) async {
    try {
      // Pastikan Firebase sudah siap sebelum melakukan sign out
      if (FirebaseAuth.instance.currentUser != null) {
        await FirebaseAuth.instance.signOut(); // Log out dari Firebase
        // Arahkan kembali ke login screen setelah berhasil log out
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      } else {
        print('Tidak ada pengguna yang sedang login');
      }
    } catch (e) {
      print('Log out error: $e');
    }
  }
}
