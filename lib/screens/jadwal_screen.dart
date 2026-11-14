import 'package:flutter/material.dart';

class JadwalScreen extends StatelessWidget {
  const JadwalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> jadwal = [
      {
        "matkul": "Pemrograman Mobile",
        "dosen": "Faqih Abdurrahman",
        "jam": "08:00 - 10:30",
        "foto": "assets/images/faqih.jpeg",
      },
      {
        "matkul": "Machine Learning",
        "dosen": "Ronal Muklis Effendi",
        "jam": "10:30 - 13:00",
        "foto": "assets/images/ronal.jpeg",
      },
      {
        "matkul": "Data Science",
        "dosen": "Risky Pandu Aji Wibowo",
        "jam": "14:00 - 16:30",
        "foto": "assets/images/pandu.jpeg",
      },
    ];

    return Container(
      color: const Color.fromARGB(255, 0, 208, 194),
      child: ListView.separated(
        itemCount: jadwal.length,
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.white54),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(jadwal[index]['foto']!),
            ),
            title: Text(
              '${jadwal[index]['matkul']} \nNama Dosen: ${jadwal[index]['dosen']} ',
              style: const TextStyle(color: Colors.black87),
            ),
            trailing: Text(
              'Jam Kuliah:\n${jadwal[index]['jam']} ',
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.black87),
            ),
          );
        },
      ),
    );
  }
}
