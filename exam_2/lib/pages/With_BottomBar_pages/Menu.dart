import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                    bottom: Radius.circular(65),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        '  <',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image(
                  image: AssetImage('assets/playlists/chil.png'),
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'grainy days',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'moody.',
                  style: TextStyle(
                    fontSize: 11,
                    color: const Color.fromARGB(255, 176, 175, 175),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
