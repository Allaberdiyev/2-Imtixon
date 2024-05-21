import 'package:exam_2/pages/Login_pages/Sign_in_Screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 195, 208),
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, -0.5),
            child: Image.asset(
              'assets/images/listening_music_girl.png',
              width: size.width,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: size.height * 0.55,
            bottom: 0,
            child: Container(
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                color: Colors.black,
              ),
              child: Padding(
                padding: EdgeInsets.all(size.width * 0.1),
                child: Column(
                  children: [
                    Text(
                      'From the latest to the greatest hits, play your favorite tracks on musium now!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 194, 203, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: size.width * 0.27,
                      height: size.height * 0.015,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: size.width * 0.14,
                        height: size.height * 0.015,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignInScreen(), //? SignInScreen() -> pagega o`tqazish
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 1, 169, 247),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 1, 169, 247)
                                  .withOpacity(0.8),
                              spreadRadius: 3,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        width: size.width * 0.8,
                        height: size.height * 0.07,
                        alignment: Alignment.center,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
