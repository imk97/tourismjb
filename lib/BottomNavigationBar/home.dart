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
                      image: NetworkImage(
                          'https://img.freepik.com/premium-vector/johor-bahru-malaysia-skyline-with-color-buildings-vector-illustration-business-travel-tourism-illustration-with-modern-architecture-image-presentation-banner-placard-web-site_119523-2810.jpg?w=2000'),
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
                          icon: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/6978/6978161.png'),
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
                          icon: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/6554/6554183.png'),
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
                          icon: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/235/235889.png'),
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
