import 'package:flutter/material.dart';
import 'package:mobel/login_screen.dart';
import 'package:mobel/logout.dart';

import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  double _iconSize1 = 100;
  double _iconSize2 = 100;
  double _iconSize3 = 100;

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
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  _iconSize1 = 150;
                });
              },
              onExit: (event) {
                setState(() {
                  _iconSize1 = 100;
                });
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArtikelPertama()),
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: _iconSize1,
                  height: _iconSize1,
                  child: Image.asset(
                    'assets/img/icon1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Text('Icon 1',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  _iconSize2 = 150;
                });
              },
              onExit: (event) {
                setState(() {
                  _iconSize2 = 100;
                });
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArtikelKedua()),
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: _iconSize2,
                  height: _iconSize2,
                  child: Image.asset(
                    'assets/img/icon2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Text('Icon 2',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  _iconSize3 = 150;
                });
              },
              onExit: (event) {
                setState(() {
                  _iconSize3 = 100;
                });
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArtikelKetiga()),
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: _iconSize3,
                  height: _iconSize3,
                  child: Image.asset(
                    'assets/img/icon3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Text('Icon 3',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
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
      body: Column(
        children: [
          Container(
            width: double.infinity, // membuat gambar menjadi full kanan dan kiri screen
            height: MediaQuery.of(context).size.height * 0.3, // membuat tinggi gambar menjadi 30% dari ukuran layar
            child: Image.asset(
              'assets/img/icon1.jpg',
              fit: BoxFit.cover, // membuat gambar menyesuaikan dengan ukuran layar
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Judul Artikel Pertama',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'Isi artikel pertama. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
            style: TextStyle(fontSize: 18),
          ),
        ],
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
