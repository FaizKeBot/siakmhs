import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 208, 194),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  // Page 1 - Cukup panggil path gambarnya aja
                  _buildSplashContent('assets/images/splash1.jpg'),

                  // Page 2 - Panggil path gambar kedua
                  _buildSplashContent('assets/images/splash3.jpg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentPage == 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Text(_currentPage == 1 ? 'Start' : 'Next >>>'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi ini sekarang cuma nerima 1 parameter yaitu path gambar
  Widget _buildSplashContent(String imagePath) {
    return Center(
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain, // Biar gambarnya proporsional nggak gepeng
        width: double.infinity, // Biar lebarnya mentok kiri-kanan
      ),
    );
  }
}
