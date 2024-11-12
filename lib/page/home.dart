import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Mobil/MPV.dart';
import 'package:flutter_application_1/page/Mobil/PickUp.dart';
import 'package:flutter_application_1/page/Mobil/SUV.dart';
import 'package:flutter_application_1/page/Mobil/Sedan.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> names = [
    'Toyota Camry',
    'Toyota Corolla',
    'Toyota Vios',
    'Toyota Yaris',
    'Toyota Avalon',
    'Toyota Fortuner',
    'Toyota Land Cruiser',
    'Toyota RAV4',
    'Toyota C-HR',
    'Toyota Rush',
    'Toyota Avanza',
    'Toyota Kijang Innova',
    'Toyota Sienta',
    'Toyota Vellfire',
    'Toyota Alphard'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 300,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      'images/logo.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit
                          .cover, // Memastikan gambar menutupi seluruh layar
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 75, 75, 75),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanMPV()),
                          );
                        },
                        child: Image.asset(
                          'images/icon/iconMPV.png',
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanSUV()),
                          );
                        },
                        child: Image.asset(
                          'images/icon/iconSUV.png',
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanSedan()),
                          );
                        },
                        child: Image.asset(
                          'images/icon/iconSedan.png',
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanPickUp()),
                          );
                        },
                        child: Image.asset(
                          'images/icon/iconPickUp.png',
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: names.length,
              itemBuilder: (context, index) => ListTile(
                dense: true,
                title: Text(
                  names[index],
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                height: 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
