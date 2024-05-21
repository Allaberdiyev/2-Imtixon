import 'package:exam_2/pages/With_BottomBar_pages/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongPage extends StatefulWidget {
  @override
  State<SongPage> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(65),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "PLAYING FROM PLAYLIST:",
                          style: TextStyle(
                            fontSize: 7,
                            color: Color.fromARGB(255, 173, 173, 173),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Lofi Loft',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Menu()),
                      );
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.arrow_forward, color: Colors.blue),
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
            Text(
              'grainy days',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
            Text(
              'moody.',
              style: TextStyle(
                fontSize: 11,
                color: const Color.fromARGB(255, 176, 175, 175),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Text(
                    "02:00",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: 8,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "2:43",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    CupertinoIcons.shuffle,
                    color: Color.fromARGB(255, 122, 122, 122),
                  ),
                  Image.asset(
                    "assets/playlists/back.png",
                    height: 30,
                  ),
                  Image.asset(
                    "assets/playlists/play.png",
                    height: 80,
                  ),
                  Image.asset(
                    "assets/playlists/backk.png",
                    height: 30,
                  ),
                  const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 122, 122, 122),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '       LYRICS',
              style: TextStyle(
                fontSize: 13,
                color: const Color.fromARGB(255, 155, 155, 155),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 20, 158, 176),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(
                  """You never look at the sky Cause you think it's too high You never look at the stars Cause you think they're too far But they're showing the lights to the way back home  When you don't know where to go""",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
