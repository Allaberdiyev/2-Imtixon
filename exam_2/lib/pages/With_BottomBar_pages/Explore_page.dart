import 'package:exam_2/pages/With_BottomBar_pages/Home_page.dart';
import 'package:exam_2/pages/With_BottomBar_pages/Library_page.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Ekran o'lchami
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/search.png',
                fit: BoxFit.cover,
                height: size.height * 0.06, // O'zgartirilgan qimmat
              ),
              SizedBox(height: 21), // Widgetlar orasidagi bo'shliq
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                    ),
                  ],
                ),
                width: size.width * 0.9, // O'zgartirilgan qimmat
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: 'Songs, Artists, Podcasts & More',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10, // O'zgartirilgan qimmat
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.03, // O'zgartirilgan qimmat
              ),
              Text(
                'Your Top Genres',
                style: TextStyle(color: Colors.white),
              ),

              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Row(
                        // Qo'shilgan qator
                        children: [
                          Expanded(
                            child: Container(
                              height: 110, // Contaynerning balandligi
                              margin: EdgeInsets.only(
                                  right: 10), // Contaynerning chetidan bo'shliq
                              child: Image.asset(
                                'assets/search/kpop.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 110, // Contaynerning balandligi
                              child: Image.asset(
                                'assets/search/indie.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01, // O'zgartirilgan qimmat
                      ),
                      Column(
                        children: [
                          Row(
                            // Qo'shilgan qator
                            children: [
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  margin: EdgeInsets.only(
                                      right:
                                          10), // Contaynerning chetidan bo'shliq
                                  child: Image.asset(
                                    'assets/search/rb.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  child: Image.asset(
                                    'assets/search/pop.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Browse All',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            // Qo'shilgan qator
                            children: [
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  margin: EdgeInsets.only(
                                      right:
                                          10), // Contaynerning chetidan bo'shliq
                                  child: Image.asset(
                                    'assets/search/made.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  child: Image.asset(
                                    'assets/search/top.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01, // O'zgartirilgan qimmat
                          ),
                          Row(
                            // Qo'shilgan qator
                            children: [
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  margin: EdgeInsets.only(
                                      right:
                                          10), // Contaynerning chetidan bo'shliq
                                  child: Image.asset(
                                    'assets/search/music.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  child: Image.asset(
                                    'assets/search/podcasts.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01, // O'zgartirilgan qimmat
                          ),
                          Row(
                            // Qo'shilgan qator
                            children: [
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  margin: EdgeInsets.only(
                                      right:
                                          10), // Contaynerning chetidan bo'shliq
                                  child: Image.asset(
                                    'assets/search/bollywood.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 110, // Contaynerning balandligi
                                  child: Image.asset(
                                    'assets/search/pop_fusion.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        currentIndex: 1, // Hozirgi tanlangan tugma indeksi
        onTap: (index) {
          // Tanlangan tugmani aniqlash
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibraryPage()),
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
