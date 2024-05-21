import 'package:exam_2/pages/With_BottomBar_pages/Explore_page.dart';
import 'package:exam_2/pages/With_BottomBar_pages/Library_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget buildContainer(String imagePath, String text) {
      return Container(
        width: size.width * 0.4,
        height: size.height * 0.07,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 104, 104, 104),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 9),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildSmallContainer(String imagePath) {
      return Container(
        width: size.width * 0.35,
        height: size.width * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget scrollPictures(String imagePath) {
      return Container(
        width: size.width * 0.5,
        height: size.width * 0.4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget homePageContent() {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.03),
            const Text(
              "Continue Listening",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: size.height * 0.02),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildContainer(
                        'assets/images/coffe_image.png', 'Coffee & Jazz'),
                    buildContainer(
                        'assets/images/top_new_songs.png', 'RELEASED'),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildContainer(
                        'assets/images/anything_goes.png', 'Anything Goes'),
                    buildContainer(
                        'assets/images/anime_picture.png', 'Anime OSTs'),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildContainer(
                        'assets/images/home_picture.png', "Harry's House"),
                    buildContainer(
                        'assets/images/night_picture.png', 'Lo-Fi Beats'),
                  ],
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Your Top Mixes",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(height: size.height * 0.01),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildSmallContainer('assets/images/pop_mix.png'),
                  SizedBox(width: size.width * 0.02),
                  buildSmallContainer('assets/images/red_girl_pic.png'),
                  SizedBox(width: size.width * 0.02),
                  buildSmallContainer('assets/images/pop_mix.png'),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Based on your recent listening",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            SizedBox(height: size.height * 0.01),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  scrollPictures('assets/images/home_picture.png'),
                  SizedBox(width: size.width * 0.02),
                  scrollPictures('assets/images/kasseta_pic.png'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(80.0), // bu appBarning hightni o`zgartirib beradi
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 22, 6, 198),
                  Color.fromARGB(255, 14, 13, 108),
                  Color.fromARGB(255, 2, 2, 19),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          title: Row(
            children: [
              Image.asset(
                'assets/images/girl_image.png',
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back !',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'chandrama',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.039,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/icons/icon.png',
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.height * 0.02,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icons/qongiroqcha.png',
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.height * 0.03,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icons/nastroyka.png',
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.height * 0.03,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: homePageContent(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibraryPage()),
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
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: 'Home',
              backgroundColor: Colors.blue),
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
