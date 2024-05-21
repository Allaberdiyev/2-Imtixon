import 'package:exam_2/pages/With_BottomBar_pages/Home_page.dart';
import 'package:exam_2/pages/Login_pages/Sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _errorMessage;
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  String? show_error(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!value.contains('@gmail.com')) {
      return 'Email must contain @gmail.com';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _errorMessage = null;
      });
      String? emailError = show_error(_emailController.text);
      String? passwordError = _validatePassword(_passwordController.text);

      if (emailError == null && passwordError == null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        setState(() {
          _errorMessage = emailError ?? passwordError;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/musium.png',
                    height: size.height * 0.27,
                    width: size.width * 0.7,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Gap(size.height * 0.01),
              const Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.065),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color.fromARGB(255, 121, 119, 119),
                          ),
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 11),
                        ),
                        validator: show_error,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Gap(size.height * 0.02),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: !_isPasswordVisible,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 121, 119, 119),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color.fromARGB(255, 121, 119, 119),
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 11),
                        ),
                        validator: _validatePassword,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Gap(size.height * 0.01),
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = value!;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      if (_errorMessage != null)
                        Text(
                          _errorMessage!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      Gap(size.height * 0.01),
                      GestureDetector(
                        onTap: _login,
                        child: Container(
                          width: size.width * 0.82,
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
                      SizedBox(height: size.height * 0.015),
                      Text(
                        'Forgot the password?',
                        style: TextStyle(
                            color: Colors.blue, fontSize: size.width * 0.03),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 2,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          const Text(
                            'or continue with',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Container(
                            width: 90,
                            height: 2,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: size.width * 0.15,
                            height: size.width * 0.15,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.2),
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/google_picture.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.15,
                            height: size.width * 0.15,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.2),
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/facebook_picture.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.15,
                            height: size.width * 0.15,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.2),
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/apple_image.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.014),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
