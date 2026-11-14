import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 208, 194),
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(
              'assets/images/PP.jpg',
            ), // Sesuaikan sama nama file foto lu
          ),
          SizedBox(height: 30),
          Text(
            'Muhammad Faiz Zaki',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('NIM: 1001240010', style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Text('Prodi: Sistem Informasi', style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Text(
            'Hobi: Membantu Teman',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
