import 'package:exam_2/pages/With_BottomBar_pages/Explore_page.dart';
import 'package:exam_2/pages/With_BottomBar_pages/Home_page.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/library/library.png'),
                    fit: BoxFit.cover,
                    height: size.height * 0.06,
                  ),
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildContainer(
                      size,
                      Text(
                        'Folders',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    buildContainer(
                      size,
                      Text(
                        'Playlists',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    buildContainer(
                      size,
                      Text(
                        'Artists',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    buildContainer(
                      size,
                      Text(
                        'Albums',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    buildContainer(
                      size,
                      Text(
                        'Podcasts',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  buildPlusIcon(),
                  SizedBox(width: 10),
                  buildColumnContainer(
                    size,
                    Text(
                      'Add New Playlist',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  buildHeartImage(),
                  SizedBox(width: 25),
                  Text(
                    'Your Liked Songs',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.compare_arrows,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Recently played',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 76, 157, 175)),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  conanImage(),
                  SizedBox(width: 20),
                  Text(
                    'Conan Gray',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  vibes(),
                  SizedBox(width: 20),
                  Text(
                    '3:00am vibes',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  wiped(),
                  SizedBox(width: 20),
                  Text(
                    'Wiped Out!',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  extra(),
                  SizedBox(width: 20),
                  Text(
                    'Extra Dynamic',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
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
              MaterialPageRoute(builder: (context) => ExplorePage()),
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

  Widget buildContainer(Size size, Widget child) {
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.03,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: child,
      ),
    );
  }

  Widget buildColumnContainer(Size size, Widget child) {
    return Container(
      width: size.width * 0.5,
      height: size.height * 0.06,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: child,
      ),
    );
  }

  Widget buildPlusIcon() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        icon: Icon(Icons.add, color: Colors.black),
        onPressed: () {},
      ),
    );
  }

  Widget buildHeartImage() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 45,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image(
          image: AssetImage('assets/library/heart.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget conanImage() {
    return Container(
      width: 100,
      height: 100,
      child: Image(
        image: AssetImage('assets/library/man.png'),
      ),
    );
  }

  Widget vibes() {
    return Container(
      width: 100,
      height: 100,
      child: Image(
        image: AssetImage('assets/library/car.png'),
      ),
    );
  }

  Widget wiped() {
    return Container(
      width: 100,
      height: 100,
      child: Image(
        image: AssetImage('assets/library/black.png'),
      ),
    );
  }

  Widget extra() {
    return Container(
      width: 100,
      height: 100,
      child: Image(
        image: AssetImage('assets/library/girl.png'),
      ),
    );
  }
}
