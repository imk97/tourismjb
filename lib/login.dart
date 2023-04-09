import 'package:flutter/material.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<FormState> email = GlobalKey<FormState>();
    // final GlobalKey<FormState> password = GlobalKey<FormState>();
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.black,
                    width: screenSize.width,
                    height: screenSize.height,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: screenSize.width,
                      height: screenSize.height * 0.7,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Form(
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Email'),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        return null;
                                      },
                                    ),
                                    Form(
                                      // key: password,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            decoration: const InputDecoration(
                                              labelText: 'Password',
                                            ),
                                            validator: (String? value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter your email';
                                              }
                                              return null;
                                            },
                                            obscureText: true,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(200, 50),
                                        ),
                                        child: const Text('Login'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
