import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:project/screens/footer.dart';
import 'package:project/widgets/responsive.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/sofa.jpg'},
    {"id": 2, "image_path": 'assets/images/sofa5.jpg'},
    {"id": 3, "image_path": 'assets/images/sofa7.jpg'},
    {"id": 3, "image_path": 'assets/images/sofa8.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 3,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 17 : 7,
                            height: 6.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? Colors.red
                                  : Colors.teal,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              // We Believe You Are Unique para

              const SizedBox(height: 30),
              const Text(
                'We Believe You Are Unique',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: Responsive.isDesktop(context) ||
                        Responsive.isDesktopLarge(context)
                    ? const EdgeInsets.symmetric(horizontal: 300)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'Why settle for a furniture that is made for someone else? With aesthetic designs, premium materials and skilled artisanship, our team is committed to improve your shopping experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //We Believe You Are Unique  para end

              //There Image Row
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/sofa5.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'New Arrivals',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Shop Now +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/sofa4.webp'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'New Arrivals',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Shop Now +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/sofa11.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'New Arrivals',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Shop Now +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*                   
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
        
        
                      Container(
                        height: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage('assets/images/sofa5.jpg'),
                                width: 300,
                                height: 500,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'New Arrivals',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Shop Now +',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage('assets/images/sofa4.webp'),
                                width: 300,
                                height: 500,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'New Arrivals',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Shop Now +',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage('assets/images/sofa11.jpg'),
                                width: 300,
                                height: 500,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'New Arrivals',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Shop Now +',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                  
                  
                  
                    ],
                  ), */
                ],
              ),
              // there images End

              // Image with Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/sofa12.jpg'),
                        fit: BoxFit.cover,
                        width: 1150,
                        height: 450,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.black54,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'UP TO 60% OFF TILL 31st MAY 2024',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ' ANNIVERSARY SALE',
                              style: TextStyle(
                                fontSize: 30,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'FURNITURE  |  LIGHTING  |  DECOR  |  ART',
                              style: TextStyle(
                                fontSize: 14,
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
              // Image with Title End
              const SizedBox(
                height: 40,
              ),

              //Loung seating para
              const Text(
                'Loung Seating',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: Responsive.isDesktop(context) ||
                        Responsive.isDesktopLarge(context)
                    ? const EdgeInsets.symmetric(horizontal: 300)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'Enter a realm of luxury with our divine sofas and sectionals, where comfort and style intertwine like threads of a masterpiece. From sleek loveseats to sprawling sectionals, each piece exudes timeless elegance, transforming your living space into a canvas of refined sophistication.',
                  textAlign: TextAlign.center, // Align text in the center
                  style: TextStyle(
                    fontSize: 16, // Set the font size
                  ),
                ),
              ),
              //Loung seating para end
              const SizedBox(
                height: 60,
              ),

              // Multiple Sofa slection

              /*          
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 600,
                    child: Image(
                      image: AssetImage('assets/images/sofa8.jpg'),
                      fit: BoxFit.cover,
                      height: 400,
                    ),
                  ),
                  SizedBox(
                    width: 600,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Sofa And Sectionals',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/sofa5.jpg'),
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Single Seat',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 24),
                              Column(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/sofa5.jpg'),
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Lower Seat',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text('Explore Collection +'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
         */

              Wrap(
                // crossAxisAlignment: CrossAxisAlignment.start,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  const SizedBox(
                    width: 600,
                    child: Image(
                      image: AssetImage('assets/images/sofa8.jpg'),
                      fit: BoxFit.cover,
                      height: 400,
                    ),
                  ),
                  SizedBox(
                    width: 600,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            'Sofa And Sectionals',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 80),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/sofa5.jpg'),
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Single Seat',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 24),
                              Column(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/sofa5.jpg'),
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Lower Seat',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text('Explore Collection +'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Multiple Sofa slection End

              const SizedBox(
                height: 50,
              ),

              //second large Image
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/sofa17.jpg'),
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
                              'NEW & TRUST IN',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'INCURVEEPISODES',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'STEP INTO A REALMWHERE FURNITURE BECOMES AN EXPRESSION OF ART',
                              style: TextStyle(
                                fontSize: 14,
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
              //second large Image end

              const SizedBox(
                height: 50,
              ),

              // Shop by collecion para

              const Text(
                'Shop by Collection',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: Responsive.isDesktop(context) ||
                        Responsive.isDesktopLarge(context)
                    ? const EdgeInsets.symmetric(horizontal: 300)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'A curated shopping experience awaits, with each collection embracing a unique aesthetic. Whether youre in pursuit of vibrant energy, classic sophistication, or effortless elegance, these collections cater to diverse tastes, guaranteeing a seamless shopping journey tailored to individual styles.',
                  textAlign: TextAlign.center, // Align text in the center
                  style: TextStyle(
                    fontSize: 16, // Set the font size
                  ),
                ),
              ),
              // Shop by colectin para end

              const SizedBox(
                height: 30,
              ),

              //Carousel

              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/tabl2.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'An Ode to Craftsmanship',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'shop the collection +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/tabl1.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Saturan Table Colection',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          ' SHOP THE COLLECTION +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/tab.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Handwoven leather collection',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'SHOP THE COLLECTION +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20), // Adjust padding as needed
                        child: Text('Explore +'),
                      ),
                    ),
                  ),
                ],
              ),

              //Carousel End

              const SizedBox(
                height: 40,
              ),

              //3rd large image
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/sofa13.jpg'),
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
                              'INTRODUCTION',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'PARTENER PROGRAM',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'BE A PART OF OUR DEDICATION TAM FOR EXCLUSIVE ACCESS TO NEW PRODUCTS & PROFESSIONAL DISCOUNT',
                              style: TextStyle(
                                fontSize: 14,
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
              //3rd large image End

              const SizedBox(
                height: 40,
              ),

              //Shop by styla para
              const Text(
                'Shop by Style',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: Responsive.isDesktop(context) ||
                        Responsive.isDesktopLarge(context)
                    ? const EdgeInsets.symmetric(horizontal: 300)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'Whether you re going for the traditional, minimalism of a classic penthouse or the rustic, easy-going feel of an ocean-side bungalow, we ve got you covered. Pick your favourite style from our artful curations to build your dream home.',
                  textAlign: TextAlign.center, // Align text in the center
                  style: TextStyle(
                    fontSize: 16, // Set the font size
                  ),
                ),
              ),
              //Shop by style para
              const SizedBox(
                height: 40,
              ),

              //2 nd carousel

              //2 nd carousel end

              //double image
              Wrap(
                // crossAxisAlignment: CrossAxisAlignment.start,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  const SizedBox(
                    width: 600,
                    child: Image(
                      image: AssetImage('assets/images/sofa12.jpg'),
                      fit: BoxFit.cover,
                      height: 500,
                    ),
                  ),
                  SizedBox(
                    width: 600,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 150),
                          const Text(
                            'Store in Style',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Where functionality meets artistic flair. From sleek cabinets to intricate shelving units, each piece is crafted to elevate your space while providing practicality in style.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 60),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Column(),
                          //     SizedBox(width: 24),
                          //   ],
                          // ),
                          const SizedBox(
                              height: 20), // Adjust spacing as needed
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal:
                                            20), // Adjust padding as needed
                                    child: Text('Explore +'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //double image End

              const SizedBox(
                height: 40,
              ),

              //4th large image
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/sofa14.jpg'),
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
                              'THE DESIGN TALK',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'GET 100% FREE DESIGN ASSISTANCE FROM OUR EXPERTS',
                              style: TextStyle(
                                fontSize: 14,
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
              //4th large image End

              //Shop by room para
              const SizedBox(height: 30),
              const Text(
                'Shop by Room',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: Responsive.isDesktop(context) ||
                        Responsive.isDesktopLarge(context)
                    ? const EdgeInsets.symmetric(horizontal: 300)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'Create a room you can t wait to come back to. Explore our collections that are designed and curated specifically keeping you in mind.',
                  textAlign: TextAlign.center, // Align text in the center
                  style: TextStyle(
                    fontSize: 16, // Set the font size
                  ),
                ),
              ),
              //Shop by room para End
              const SizedBox(
                height: 60,
              ),

              //3rd Carousel

              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/livingroom.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'The pride Room of a home',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'SHOP THE LIVING +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/bed.png'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Get Cozy',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          ' SHOP THE BEADROOM +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/dining.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Gather Together and Build Memories',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'SHOP THE DINING +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text('Explore +'),
                      ),
                    ),
                  ),
                ],
              ),

              //3rd Carousel End

              const SizedBox(
                height: 40,
              ),

              //Must -Haves

              Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  const SizedBox(
                    width: 600,
                    child: Image(
                      image: AssetImage('assets/images/sofa15.jpg'),
                      fit: BoxFit.cover,
                      height: 400,
                    ),
                  ),
                  SizedBox(
                    width: 600,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 120),
                          const Text(
                            'Must-Haves',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Illuminate your space with the warm embrace of our exquisite lightings, where every glow tells a story of ambiance and style',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text('Explore +'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Must -Haves End

              const SizedBox(
                height: 40,
              ),

              //5th large image
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/sofa8.jpg'),
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
                              'SLEEK SIMPLICITY ',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'EBONY',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'ENTERYWAY CONSOLE',
                              style: TextStyle(
                                fontSize: 14,
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
              //5th large image End

              //Curated Galleries

              const SizedBox(height: 30),
              const Text(
                'Curated Galleries',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: Responsive.isDesktop(context) ||
                        Responsive.isDesktopLarge(context)
                    ? const EdgeInsets.symmetric(horizontal: 300)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'Our stores exude an aura that’s irresistible with great wood and fabric. Catching your eyes and captivating your mind, our art stands at every nook and corner looking at you. Visit and get consumed.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              //Curated Galleries End
              const SizedBox(
                height: 20,
              ),

              //4thcarousel
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/store2.webp'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'DTALE Kochi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Explore Our Store +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/store3.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'DTALE Thrissur',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          ' Exploer Our Store +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/store1.jpg'),
                            width: 300,
                            height: 500,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'DTALE Bengaluru',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Coming Soon +',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //4thcarousel End

              //Featured in

              const SizedBox(height: 30),
              const Text(
                'Featured In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 55,
                runSpacing: 10,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/living.JPG',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/ad.JPG',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/elle.JPG',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/better.JPG',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),

              //Featured in End

              //four icon
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                runSpacing: 20, //vertical
                spacing: 20, //horizontal
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.shield,
                          size: 40,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              '10 Years Warranty',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              'Direct Selling: Factory To Customer',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.note,
                          size: 40,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              '66 Quality Check',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.layers,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              'Kd (Kiln Dried) and HT (Heat Treated)',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //four icon

              const SizedBox(
                height: 20,
              ),

              //Four icon row2
              Wrap(
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                runSpacing: 20,
                spacing: 20,
                children: [
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add_box,
                          size: 40,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              'Ergonomically Designed',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.link_outlined,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              ' Generations Long Durability',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.verified_outlined,
                          size: 40,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              'All India Service Warranty',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.child_care,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                            child: Text(
                              'Free Of Child Labour',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Four icon row2 End
              const SizedBox(
                height: 15,
              ),

              //Text Content
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Modern Furniture Online Store',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25), // Spacer between paragraphs
                    Text(
                      'Reimagine your space with Dtale Modern furniture and accessories! Dtale Modern is linked with well-crafted furniture that brings your homes aesthetics to life, giving it a rich appearance and feel. We want to change the way people buy furniture and home design. We think that furniture should be elegant and appealing to the eye, and this approach allows us to stand out in the business. Dtale Modern will enable you to shop the way you want by picking your favourite design and customising it to fit your décor. In addition, we design high-quality furniture, accessories, and art that is aesthetically pleasing.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Dtale is a treasure trove of furniture, and the more you explore it, the more you get. So whether youre searching for furniture for your living room, bedroom, dining area, office space, hotel space, or study space, Dtale has it all. ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'We have the most up-to-date furniture styles that are ideal for modern homes. You may also get your house furnishings designed online here. Not only that, but we can also help you with your homes interior design. Our devoted team of interior designers will go to great lengths to give your home a fresh new look. A dining table set, futon beds, storage, centre tables, TV stands, wardrobes, bookshelves, couch cum bed, bar cabinets, paintings, sculptures, accents, and much more is what we have for you. Our personalised collections for each category also provide a sufficient number of search options for you to evaluate and select the one that best meets your needs. Not only this, but you can also browse the new segment of the latest arrivals.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'The right furniture complements your homes overall style and makes it more pleasant to the eye. So it may be a genuine thrill to find the best furniture online that strikes the appropriate mix between comfort and the elegance of your aspirations.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'With decades of experience, Dtale is one of Indias premier furniture makers, delivering well-designed and high-quality modern furniture online that will become a fixture in your home or workplace for years to come. So, if you’re looking for luxurious furniture in India, Dtale is at your forefront with all you need as we believe in making a beautiful world(space) for you! ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Build a Space of your Dreams with Dtale Modern, the luxury furniture in India',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You may buy timeless furniture online for your home space or any other space without going overboard from Dtale, India s leading online furniture store, to add an attractive touch to your home at your ease. We provide an unrivalled collection of furniture for your home or office, all of which are handcrafted from premium-quality wood. Our artisans ensure that everything upholds the quality and meticulously embellish your space! ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'So, whether you want to shop in person or purchase furniture online, Dtale is the best furniture store in India, where you can be sure of receiving long-lasting furniture with attractive designs.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Allow the gorgeous furnishings from Dtale to transform your home; we are only a scroll and a click away',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Best Online Furniture Shop in India: Dtale Modern',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Dtale is India s top online furniture store, featuring furniture sets designed and constructed with elegance, utility, and durability in mind. We have everything from European Ash Wood wood furniture to hardwood furniture for your bedroom, living room, dining area, and more.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You can choose furniture that matches your home design precisely and is available at the best prices in India. At Dtale, you can buy on-trend and lux furniture online from the comfort of your own home, with features like simple EMI. In addition, our integrated filtering features allow you to narrow down your search and get exactly what youre looking for! You may also take advantage of the various luxury furniture collection at Dtale from time to time.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Customers at Dtale have access to an unrivalled furniture variety, ranging from old classics to modern showstoppers. From the moment customers walk into the showroom until their furniture is delivered, the in-house team of designers and experienced personnel are on hand. Dtale Modern has assisted in outfitting hundreds of homes and looks forward to maintaining the history of offering high-quality home furnishings with unsurpassed customer service and pleasure.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),

              //Text Content End

              //Footer
              /* 
              Container(
                height: 500,
                width: 1500,
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
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Row(
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
                                        vertical: 17, horizontal: 20),
                                    child: Text(
                                      'Subscribe',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
              ),
             
            */

              // Container(
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: 50,
              //         width: 20,
              //       ),
              //       Wrap(
              //         spacing: 60,
              //         runAlignment: WrapAlignment.start,
              //         alignment: WrapAlignment.start,
              //         runSpacing: 30,
              //         direction: Axis.horizontal,
              //         children: [
              //           const Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'About Us',
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Why Us',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Testimonials',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Awards & Recognition',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Mesure Your Space',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(height: 10),
              //               Text(
              //                 'Care and Maintenance',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Contact Us',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //             ],
              //           ),
              //           const Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Services',
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Partner Program',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Design Projects',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Collaborators',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'FAQ',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //             ],
              //           ),
              //           const Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Shop',
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Furniture',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Collection',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Accents',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Art',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //             ],
              //           ),
              //           const Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Terms and Conditions',
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Privacy Policy',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Return Policy',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Shipping Policy',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'Warranty Policy',
              //                 style: TextStyle(fontSize: 14),
              //               ),
              //               SizedBox(
              //                 height: 20,
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             width: 500,
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 const Text(
              //                   'Sign up for emails packed with finds and \n inspiration',
              //                   style: TextStyle(
              //                       fontSize: 16, color: Colors.black),
              //                 ),
              //                 const SizedBox(height: 20),
              //                 Container(
              //                   child: Row(
              //                     children: [
              //                       Container(
              //                         width: 300,
              //                         child: const Column(
              //                           children: [
              //                             TextField(
              //                               decoration: InputDecoration(
              //                                 hintText: 'Enter your email...',
              //                                 hintStyle: TextStyle(
              //                                     color: Colors.black),
              //                                 border: OutlineInputBorder(
              //                                   borderSide: BorderSide(
              //                                       color: Colors.white),
              //                                   borderRadius: BorderRadius.zero,
              //                                 ),
              //                               ),
              //                               style:
              //                                   TextStyle(color: Colors.black),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         width: 5,
              //                       ),
              //                       Container(
              //                         color: Colors.black,
              //                         child: OutlinedButton(
              //                           onPressed: () {},
              //                           style: OutlinedButton.styleFrom(
              //                             shape: RoundedRectangleBorder(
              //                               borderRadius:
              //                                   BorderRadius.circular(0),
              //                             ),
              //                           ),
              //                           child: const Padding(
              //                             padding: EdgeInsets.symmetric(
              //                                 vertical: 17, horizontal: 20),
              //                             child: Text(
              //                               'Subscribe',
              //                               style:
              //                                   TextStyle(color: Colors.white),
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 const SizedBox(
              //                   height: 60,
              //                 ),
              //                 Row(
              //                   children: [
              //                     Image.asset(
              //                       'assets/images/facebook.png',
              //                       height: 30,
              //                       width: 30,
              //                     ),
              //                     const SizedBox(width: 80),
              //                     Image.asset(
              //                       'assets/images/youtube.png',
              //                       height: 30,
              //                       width: 30,
              //                     ),
              //                     const SizedBox(width: 80),
              //                     Image.asset(
              //                       'assets/images/instagram.png',
              //                       height: 30,
              //                       width: 30,
              //                     ),
              //                     const SizedBox(width: 80),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 100,
              // )

              //FooterEnd
              Footer(),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
