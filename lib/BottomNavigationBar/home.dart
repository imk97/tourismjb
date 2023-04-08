import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text('$screenW'),
            Container(
              padding: const EdgeInsets.all(0),
              width: screenSize.width,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: const Image(
                      image: AssetImage('assets/header_tourismjb.png'),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: 50,
                    right: 50,
                    height: 70,
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      child: const Card(
                        color: Colors.red,
                        child: SizedBox(
                          width: 300,
                          height: 80,
                          child: Center(
                            child: Text('Johor Bahru Tourism'),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/halal.png'),
                          iconSize: 50.0,
                        ),
                        const Text('Halal Food'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/tourism.png'),
                          iconSize: 50.0,
                        ),
                        const Text('Tourism'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/hotel.png'),
                          iconSize: 50.0,
                        ),
                        const Text('Hotel')
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(0.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Column(
            //           children: [
            //             IconButton(
            //               onPressed: () {},
            //               icon: Image.asset('assets/mosque.png'),
            //               iconSize: 50.0,
            //             ),
            //             const Text('Halal Food'),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Column(
            //           children: [
            //             IconButton(
            //               onPressed: () {},
            //               icon: Image.asset('assets/mosque.png'),
            //               iconSize: 50.0,
            //             ),
            //             const Text('Tourism'),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Column(
            //           children: [
            //             IconButton(
            //               onPressed: () {},
            //               icon: Image.network(
            //                   'https://www.pngfind.com/pngs/m/221-2214644_button-add-icon-web-symbol-internet-website-add.png'),
            //               iconSize: 50.0,
            //             ),
            //             const Text('Hotel'),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
