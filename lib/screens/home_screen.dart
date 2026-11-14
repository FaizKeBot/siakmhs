import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Siapkan list path gambar lu di sini
    final List<String> menuImages = [
      'assets/images/itts1.jpg', // Sesuaikan nama file gambar lu
      'assets/images/itts2.jpg',
      'assets/images/itts3.jpg',
      'assets/images/itts4.jpg',
    ];

    return Container(
      color: const Color.fromARGB(255, 0, 208, 194),
      child: Center(
        child: GridView.builder(
          padding: const EdgeInsets.all(40),
          shrinkWrap: true, // Biar grid-nya nggak makan tempat berlebih
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom
            mainAxisSpacing: 30, // Jarak atas-bawah
            crossAxisSpacing: 30, // Jarak kiri-kanan
          ),
          itemCount: menuImages.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent, // Warna dasar kalau gambar gagal load
                shape: BoxShape.circle,
                // Nah, di sini bagian krusial buat masukin gambarnya
                image: DecorationImage(
                  image: AssetImage(menuImages[index]),
                  fit: BoxFit
                      .cover, // Penting: Biar gambar lu proporsional menuhin lingkaran
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
