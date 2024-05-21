import 'package:exam_2/pages/Login_pages/Login_in_screen.dart';
import 'package:exam_2/pages/Login_pages/Sign_up_screen.dart';
import 'package:flutter/material.dart';

Widget login_buttons(Size size, String assets_image, String text, onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 33, 32, 31),
      ),
      child: Row(
        children: [
          SizedBox(width: size.width * 0.15),
          CircleAvatar(
            radius: size.height * 0.04 / 2,
            backgroundImage: AssetImage(assets_image),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: size.width * 0.03),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.03,
            ),
          ),
        ],
      ),
    ),
  );
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Ekran o'lchamini olish

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Orqaga qaytish
                    },
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.5),
                  child: Image(
                    height: size.height * 0.27,
                    width: size.width * 0.8,
                    image: const AssetImage('assets/images/musium.png'),
                    fit: BoxFit.fitWidth, // Kenglikni uzaytirish
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Let's get you in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.08,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                login_buttons(size, 'assets/images/google_picture.png',
                    'Continue with Google', () {
                  print('Google button pressed');
                }),
                SizedBox(height: size.height * 0.02),
                login_buttons(
                  size,
                  'assets/images/facebook_picture.png',
                  'Continue with Facebook',
                  () {
                    print('Facebook button pressed');
                  },
                ),
                SizedBox(height: size.height * 0.02),
                login_buttons(size, 'assets/images/apple_image.png',
                    'Continue with Apple', () {
                  print('Apple button pressed');
                }),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.36,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(width: size.width * 0.04),
                    const Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: size.width * 0.04),
                    Container(
                      width: size.width * 0.36,
                      height: 1,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginScreen()), // push Login page
                    );
                  },
                  child: Container(
                    width: size.width * 0.88,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          spreadRadius: 3,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Log in with a password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.03,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.white, fontSize: size.height * 0.014),
                      ),
                      InkWell(
                        onTap: () {
                          // Sign Up bosganda boshqa sahifaga o'tadi
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: size.height * 0.015),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
