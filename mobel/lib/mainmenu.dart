import 'package:flutter/material.dart';
import 'package:mobel/login_screen.dart';
import 'package:mobel/logout.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LogoutScreen()),
                (Route<dynamic> route) => false,
              );
            },
          ),
          GestureDetector(
            onTap: () {
              // Fungsi logout disini
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Icon 1'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigasi ke artikel kedua
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtikelKedua()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Image.asset('assets/img/icon2.jpg',
                    width: 100, height: 100),
              ),
            ),
            const Text('Icon 2'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigasi ke artikel ketiga
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtikelKetiga()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Image.asset('assets/img/icon3.jpg',
                    width: 100, height: 100),
              ),
            ),
            const Text('Icon 3'),
          ],
        ),
      ),
    );
  }
}

// Contoh artikel pertama
class ArtikelPertama extends StatelessWidget {
  const ArtikelPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LogoutScreen()),
                (Route<dynamic> route) => false,
              );
            },
          ),
          GestureDetector(
            onTap: () {
              // Fungsi logout disini
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Judul Artikel Pertama',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Isi artikel pertama. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// Contoh artikel kedua
class ArtikelKedua extends StatelessWidget {
  const ArtikelKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LogoutScreen()),
                (Route<dynamic> route) => false,
              );
            },
          ),
          GestureDetector(
            onTap: () {
              // Fungsi logout disini
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Judul Artikel Kedua',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Isi artikel kedua. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// Contoh artikel ketiga
class ArtikelKetiga extends StatelessWidget {
  const ArtikelKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LogoutScreen()),
                (Route<dynamic> route) => false,
              );
            },
          ),
          GestureDetector(
            onTap: () {
              // Fungsi logout disini
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Judul Artikel Ketiga',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Isi artikel ketiga. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
