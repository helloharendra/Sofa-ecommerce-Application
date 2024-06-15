import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/footer.dart';
import 'package:project/widgets/responsive.dart';

class Stores extends StatefulWidget {
  const Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  final CarouselController _controller = CarouselController();
  final List<String> images = [
    'https://imageproxy.saturn.forge99.com/640x480/https://www.hiltonhyland.com/wp-content/uploads/2024/04/1-1018-Chautaqua_FullResolution30-1024x768.jpg',
    'https://imageproxy.saturn.forge99.com/640x480/https://www.hiltonhyland.com/wp-content/uploads/2024/05/1-1024x686.jpg',
    'https://imageproxy.saturn.forge99.com/640x480/https://www.hiltonhyland.com/wp-content/uploads/2024/04/1-Private-Residence-for-DK-F_001-16.9-1024x575.jpg',
    'https://imageproxy.saturn.forge99.com/640x480/https://www.hiltonhyland.com/wp-content/uploads/2024/04/1-9344-Nightingale-virtuallyherestudios.com-10-1024x682.jpg',
    'https://imageproxy.saturn.forge99.com/640x480/https://www.hiltonhyland.com/wp-content/uploads/2023/07/1-1.jpg',
    'https://imageproxy.saturn.forge99.com/640x480/https://www.hiltonhyland.com/wp-content/uploads/2023/11/9255SwallowDrive116_PS-1024x682.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our Stores',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Padding(
                        padding: Responsive.isDesktop(context) ||
                                Responsive.isDesktopLarge(context)
                            ? const EdgeInsets.symmetric(horizontal: 300)
                            : const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Our stores exude an aura that’s irresistible with great wood and fabric! Catching your eyes and captivating your mind, our art stands at every nook and corner looking at you! Observe and get consumed! Visit our gallery store at Kochi and Thrissur.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // store adders
                  Container(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          runSpacing: 20,
                          spacing: 20,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 600,
                              child: CarouselSlider.builder(
                                itemCount: images.length,
                                carouselController: _controller,
                                itemBuilder: (BuildContext context, int index,
                                    int realIndex) {
                                  return Image.network(
                                    images[index],
                                    height: 400,
                                    width: 500,
                                    fit: BoxFit.cover,
                                  );
                                },
                                options: CarouselOptions(
                                  height: 400,
                                  viewportFraction: 1,
                                  initialPage: 0,
                                  reverse: false,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 4),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 4000),
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ),
                            Container(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Bengaluru',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black),
                                  ),

                                  SizedBox(height: 10),
                                  // Address
                                  Text(
                                    '693/1 ITPL, main road, Whitefield, HoodiBengaluru',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  SizedBox(height: 5),

                                  SizedBox(height: 5),
                                  Text(
                                    'help@dtalemodern.com',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(height: 30),
                                  // Buttons
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Timings'),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Opening soon',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 20),
                                                child: Text(
                                                  'Get Directions',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Phone'),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/whatsapp.png',
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                '+91 7005500200',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            color: Colors.black,
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 20),
                                                child: Text(
                                                  'Book An Appointment',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // store adders End

                  // 2nd store
                  Container(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          spacing: 20,
                          runSpacing: 20,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 600,
                              child: CarouselSlider.builder(
                                itemCount: images.length,
                                carouselController: _controller,
                                itemBuilder: (BuildContext context, int index,
                                    int realIndex) {
                                  return Image.network(
                                    images[index],
                                    height: 400,
                                    width: 500,
                                    fit: BoxFit.cover,
                                  );
                                },
                                options: CarouselOptions(
                                  height: 400,
                                  viewportFraction: 1,
                                  initialPage: 0,
                                  reverse: false,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 7),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 7000),
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ),
                            Container(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Kochi',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black),
                                  ),

                                  SizedBox(height: 10),
                                  // Address
                                  Text(
                                    'XVI/IP, Near Poojari Valavu Vadacode P.O, Sea Port Airpot Road North Thrikkakara,Ernakulam',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  SizedBox(height: 5),

                                  SizedBox(height: 5),
                                  Text(
                                    'help@dtalemodern.com',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(height: 30),
                                  // Buttons
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Timings'),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Mon to Sat:',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            '10 Am to 07:30 PM',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 20),
                                                child: Text(
                                                  'Get Directions',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Phone'),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/whatsapp.png',
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                '+91 7005500200',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 35),
                                          Container(
                                            color: Colors.black,
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 20),
                                                child: Text(
                                                  'Book An Appointment',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // 2nd store End

                  //3rd store
                  Container(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          runSpacing: 20,
                          spacing: 20,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 600,
                              child: CarouselSlider.builder(
                                itemCount: images.length,
                                carouselController: _controller,
                                itemBuilder: (BuildContext context, int index,
                                    int realIndex) {
                                  return Image.network(
                                    images[index],
                                    height: 400,
                                    width: 500,
                                    fit: BoxFit.cover,
                                  );
                                },
                                options: CarouselOptions(
                                  height: 400,
                                  viewportFraction: 1,
                                  initialPage: 0,
                                  reverse: false,
                                  autoPlay: false,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 3000),
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ),
                            Container(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Thrissur',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black),
                                  ),

                                  SizedBox(height: 10),
                                  // Address
                                  Text(
                                    'NH Bypass MarathakkaraThrissur',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  SizedBox(height: 5),

                                  SizedBox(height: 5),
                                  Text(
                                    'help@dtalemodern.com',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(height: 30),
                                  // Buttons
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Timings'),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Mon to Sat:',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            '10 Am to 07:30 PM',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 20),
                                                child: Text(
                                                  'Get Directions',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Phone'),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/whatsapp.png',
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                '+91 7005500200',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 35),
                                          Container(
                                            color: Colors.black,
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 20),
                                                child: Text(
                                                  'Book An Appointment',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //3rd store End
                  SizedBox(
                    height: 30,
                  ),

                  // 4 card data
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 100,
                      runAlignment: WrapAlignment.center,
                      runSpacing: 20,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/good.JPG'),
                              Text(
                                'Good Design',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Designs that speak of\naesthetics and functionality!',
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset('assets/images/good1.JPG'),
                              Text(
                                'Good For You',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Every shipment is insured\nevery payment is secure with us!',
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset('assets/images/good2.JPG'),
                              Text(
                                'Good For People',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'We are here listening to your custom \needs or any other requirements!',
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset('assets/images/good3.JPG'),
                              Text(
                                'Good For Planet',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Keeping in mind all regulations\n that benefits all.',
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // 4 card data End

                  SizedBox(
                    height: 80,
                  ),
                  //Footer
                  /*        Container(
                    height: 500,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Why Us',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Testimonials',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Awards & Recognition',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Mesure Your Space',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Care and Maintenance',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Contact Us',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Partner Program',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Design Projects',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Collaborators',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FAQ',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shop',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Furniture',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Collection',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Accents',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Art',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Terms and Conditions',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Return Policy',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Shipping Policy',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Warranty Policy',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sign up for emails packed with finds and \n inspiration',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  width: 300,
                                  child: Column(
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter your email...',
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  color: Colors.black,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 17, horizontal: 8),
                                      child: Text(
                                        'Subscribe',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(width: 80),
                                Image.asset(
                                  'assets/images/youtube.png',
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(width: 80),
                                Image.asset(
                                  'assets/images/instagram.png',
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(width: 80),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ), */
                  //FooterEnd
                  Footer(),
                  SizedBox(
                    height: 100,
                  )

                  //end
                ],
              ),
            )
          ],
        ));
  }
}
