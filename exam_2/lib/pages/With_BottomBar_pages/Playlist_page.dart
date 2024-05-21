import 'package:exam_2/pages/With_BottomBar_pages/Explore_page.dart';
import 'package:exam_2/pages/With_BottomBar_pages/Home_page.dart';
import 'package:exam_2/pages/With_BottomBar_pages/song_page.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'FROM “PLAYLISTS”',
            style: TextStyle(
                color: Color.fromARGB(255, 181, 181, 181), fontSize: 11),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SongPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
              child: Image(
                image: const AssetImage('assets/playlists/child.png'),
                width: size.width * 0.7,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Lofi Loft',
                style:
                    TextStyle(fontSize: size.width * 0.05, color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'soft, chill, dreamy, lo-fi beats',
                style: TextStyle(
                    fontSize: size.width * 0.02,
                    color: const Color.fromARGB(255, 205, 205, 205)),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image:
                              const AssetImage('assets/playlists/childr.png'),
                          width: size.width * 0.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'grainy days',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Icon(Icons.favorite, color: Colors.white),
                              ],
                            ),
                            const Text(
                              'moody.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 169, 169, 169),
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: const AssetImage('assets/playlists/coffe.png'),
                          width: size.width * 0.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Coffee',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Icon(Icons.coffee, color: Colors.white),
                              ],
                            ),
                            const Text(
                              'Kainbeats',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 169, 169, 169),
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image(
                          image: const AssetImage('assets/playlists/girl.png'),
                          width: size.width * 0.2,
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'raindrops',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(Icons.cloud, color: Colors.white),
                                ],
                              ),
                              const Text(
                                'rainyyxx',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 169, 169, 169),
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: const AssetImage('assets/playlists/smoke.png'),
                          width: size.width * 0.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Tokyo',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Icon(Icons.location_city, color: Colors.white),
                              ],
                            ),
                            const Text(
                              'SmYang',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 169, 169, 169),
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: const AssetImage('assets/playlists/home.png'),
                          width: size.width * 0.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Lullaby',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            const Text(
                              'iamfinenow',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 169, 169, 169),
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: const AssetImage('assets/playlists/eye.png'),
                          width: size.width * 0.2,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Hazel Eyes',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Icon(Icons.remove_red_eye, color: Colors.white),
                              ],
                            ),
                            const Text(
                              'moody.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 169, 169, 169),
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ExplorePage()),
            );
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
