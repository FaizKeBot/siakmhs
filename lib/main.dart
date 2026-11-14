import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistem Akademik Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Tambahkan konfigurasi appBarTheme di bawah ini:
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // <-- Semua header otomatis jadi biru
          foregroundColor:
              Colors.white, // <-- Semua teks/ikon di header otomatis jadi putih
          elevation:
              0, // <-- Menghilangkan bayangan di bawah header (opsional, biar clean)
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
