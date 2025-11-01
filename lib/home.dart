import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ini Halaman Home"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. "
                  "Contohnya, ada layar produk, dan ketika pengguna mengklik produk, akan muncul layar detail "
                  "dengan detail produk tersebut.\n\n"
                  "Pertama, kita perlu membuat dua halaman atau 'routes' yang akan kita tampilkan. "
                  "Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama ke halaman berikutnya. "
                  "Terakhir, kita bisa kembali dari halaman kedua ke halaman pertama menggunakan Navigator.pop().",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Image.asset('assets/icon/home.png', width: 150),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/tujuan');
                },
                child: const Text(
                  "Ke halaman tujuan >",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
