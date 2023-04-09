import 'package:flutter/material.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> email = GlobalKey<FormState>();
    final GlobalKey<FormState> password = GlobalKey<FormState>();
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: screenSize.width,
                height: screenSize.height / 3,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login to your Account',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Email'),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                          },
                        )
                      ],
                    ),
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
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          obscureText: true,
                        )
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
          // child: Padding(
          //   padding: const EdgeInsets.all(30.0),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const Align(
          //         alignment: Alignment.topLeft,
          //         child: Text(
          //           'Login to your Account',
          //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //       Form(
          //         key: email,
          //         child: Column(
          //           children: [
          //             TextFormField(
          //               decoration: const InputDecoration(labelText: 'Email'),
          //               validator: (String? value) {
          //                 if (value == null || value.isEmpty) {
          //                   return 'Please enter your email';
          //                 }
          //                 return null;
          //               },
          //             )
          //           ],
          //         ),
          //       ),
          //       Form(
          //         key: password,
          //         child: Column(
          //           children: [
          //             TextFormField(
          //               decoration: const InputDecoration(
          //                 labelText: 'Password',
          //               ),
          //               validator: (String? value) {
          //                 if (value == null || value.isEmpty) {
          //                   return 'Please enter your email';
          //                 }
          //                 return null;
          //               },
          //               obscureText: true,
          //             )
          //           ],
          //         ),
          //       ),
          //       TextButton(
          //         style: TextButton.styleFrom(foregroundColor: Colors.blue),
          //         onPressed: () {},
          //         child: const Text('Submit'),
          //       )
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
