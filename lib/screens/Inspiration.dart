import 'package:flutter/material.dart';

class Inspiration extends StatefulWidget {
  const Inspiration({super.key});

  @override
  State<Inspiration> createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/shopstyle.JPG',
              height: 400,
              width: 1150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'We are Obsessed with Finding You The Best Styles',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'Whether youre going for the traditional, minimalism of a classic penthouse or the rustic, easy-\ngoing feel of an ocean-side bungalow, weve got you covered. Pick your favourite style from our \n artful curations to build your dream home.',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),

            //1 image
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/sofa14.jpg'),
                      fit: BoxFit.cover,
                      width: 1150,
                      height: 450,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Rustic & Nautical',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Coastal',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'FARMHOUSE',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //1 image End
            SizedBox(
              height: 70,
            ),

            //2 image
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/inspiration (14).jpg'),
                      fit: BoxFit.cover,
                      width: 1150,
                      height: 450,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Trending & Chic',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'CONTEMPORARY',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'MODERN',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //2 image End
            SizedBox(
              height: 70,
            ),

            //3 image
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/inspiration (13).jpg'),
                      fit: BoxFit.cover,
                      width: 1150,
                      height: 450,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Minimal & Sophisticated',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'CLASSIC',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'MODERN',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //3 image End
            SizedBox(
              height: 70,
            ),

            //4 image
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/inspiration (11).jpg'),
                      fit: BoxFit.cover,
                      width: 1150,
                      height: 450,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'LAID-BACK&rELAXED',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'TROPICAL',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'MODERN',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //4 image End
            SizedBox(
              height: 70,
            ),

            // 5 image
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/inspiration (6).jpg'),
                      fit: BoxFit.cover,
                      width: 1150,
                      height: 450,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sleek & Timeless',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'MID-CENTURY',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'modern',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 50,
            )
            // 5 image End
          ],
        )
      ],
    ));
  }
}
